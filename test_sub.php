 <?php
 try {
   $user  = 'root';
   $pass  = '';
   $db  = 'book-shop';
   $charset = 'utf8';
   $dbh = new PDO("mysql:host=localhost;dbname=$db;charset=$charset", $user, $pass);
 } catch (PDOException $e) {
  print "Error!: " . $e->getMessage() . "<br/>";
  die();
}
//Query Data
$sth = $dbh->prepare("SELECT * FROM tbl_type");
$sth->execute();
$result = $sth->fetchAll(PDO::FETCH_ASSOC);
$data = array();
$sub_data = array();
//Group data with parent_id
foreach($result as $row){
 if($row['t_ref'] > 0){
  $sub_data[$row['t_ref']][$row['t_id']] = $row;
}else{
  $data[$row['t_id']] = $row;
}
}
// SET sub category
foreach($data as $row){
 if($sub = findSubCategory($row['t_id'], $sub_data)){
  $data[$row['t_id']]['sub'] = $sub;
}
}
//echo '<pre><h2>MAIN</h2>', print_r($data,true), '</pre>';
//echo '<pre><h2>SUB</h2>', print_r($sub_data,true), '</pre>';

function displayCategory($data, $sub=1){
 echo '<a  href="" >'. str_repeat("&nbsp;",$sub*4) . ' '.$data['t_name'].'</a>';
 if(isset($data['sub'])){
  $sub++;
  //Recursive Function
  foreach($data['sub'] as $row){
   displayCategory($row, $sub);
 }
}
}
function findSubCategory($id, $sub_data){
 if(isset($sub_data[$id])){
  foreach($sub_data[$id] as $row){
   //Recursive Function
   if($sub = findSubCategory($row['t_id'], $sub_data)){
    $sub_data[$id][$row['t_id']]['sub'] = $sub;
  }
}
return $sub_data[$id];
}
}
?>

<?php


foreach($data as $row){ ?>
<li class="dropdown-submenu">
<?php
  displayCategory($row);
?>
  </li>
  <?php
}
?>

