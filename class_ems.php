 <?php

 if ($ttems == 'ems') {
          if ($sumw <= 20 ) {
            $tems = 32;
          }elseif ($sumw > 20 && $sumw <= 100  ) {
            $tems = 37;
          }elseif ($sumw > 100 && $sumw <= 250  ) {
            $tems = 42;
          }elseif ($sumw > 250 && $sumw <= 500  ) {
            $tems = 52;
          }elseif ($sumw > 500 && $sumw <= 1000  ) {
            $tems = 67;
          }elseif ($sumw > 1000 && $sumw <= 1500  ) {
            $tems = 82;
          }elseif ($sumw > 1500 && $sumw <= 2500  ) {
            $tems = 97;
          }elseif ($sumw > 2500 && $sumw <= 3000  ) {
            $tems = 122;
          }elseif ($sumw > 3000 && $sumw <= 3500  ) {
            $tems = 137;
          }elseif ($sumw > 4000 && $sumw <= 4500  ) {
            $tems = 157;
          }else{
           $tems = 200;
         }

       }elseif($ttems == 'kerry') {
        if ($sumw <= 20 ) {
          $tems = 25;
        }elseif ($sumw > 20 && $sumw <= 100  ) {
          $tems = 30;
        }elseif ($sumw > 100 && $sumw <= 250  ) {
          $tems = 35;
        }elseif ($sumw > 250 && $sumw <= 500  ) {
          $tems = 40;
        }elseif ($sumw > 500 && $sumw <= 1000  ) {
          $tems = 45;
        }elseif ($sumw > 1000 && $sumw <= 1500  ) {
          $tems = 82;
        }elseif ($sumw > 1500 && $sumw <= 2500  ) {
          $tems = 97;
        }elseif ($sumw > 2500 && $sumw <= 3000  ) {
          $tems = 122;
        }elseif ($sumw > 3000 && $sumw <= 3500  ) {
          $tems = 137;
        }elseif ($sumw > 4000 && $sumw <= 4500  ) {
          $tems = 157;
        }else {
          $tems = 200;
        }
      }

 

?>