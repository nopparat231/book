 <?php

 if ($ttems == 'ems') {
          if ($sumww <= 20 ) {
            $tems = 32;
          }elseif ($sumww > 20 && $sumww <= 100  ) {
            $tems = 37;
          }elseif ($sumww > 100 && $sumww <= 250  ) {
            $tems = 42;
          }elseif ($sumww > 250 && $sumww <= 500  ) {
            $tems = 52;
          }elseif ($sumww > 500 && $sumww <= 1000  ) {
            $tems = 67;
          }elseif ($sumww > 1000 && $sumww <= 1500  ) {
            $tems = 82;
          }elseif ($sumww > 1500 && $sumww <= 2500  ) {
            $tems = 97;
          }elseif ($sumww > 2500 && $sumww <= 3000  ) {
            $tems = 122;
          }elseif ($sumww > 3000 && $sumww <= 3500  ) {
            $tems = 137;
          }elseif ($sumww > 4000 && $sumww <= 4500  ) {
            $tems = 157;
          }else{
           $tems = 200;
         }

       }elseif($ttems == 'kerry') {
        if ($sumww <= 20 ) {
          $tems = 25;
        }elseif ($sumww > 20 && $sumww <= 100  ) {
          $tems = 30;
        }elseif ($sumww > 100 && $sumww <= 250  ) {
          $tems = 35;
        }elseif ($sumww > 250 && $sumww <= 500  ) {
          $tems = 40;
        }elseif ($sumww > 500 && $sumww <= 1000  ) {
          $tems = 45;
        }elseif ($sumww > 1000 && $sumww <= 1500  ) {
          $tems = 82;
        }elseif ($sumww > 1500 && $sumww <= 2500  ) {
          $tems = 97;
        }elseif ($sumww > 2500 && $sumww <= 3000  ) {
          $tems = 122;
        }elseif ($sumww > 3000 && $sumww <= 3500  ) {
          $tems = 137;
        }elseif ($sumww > 4000 && $sumww <= 4500  ) {
          $tems = 157;
        }else {
          $tems = 200;
        }
      }



?>
