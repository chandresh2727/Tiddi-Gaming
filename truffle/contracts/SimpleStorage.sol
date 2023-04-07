// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract SimpleStorage {

  enum ChooseField {Tie,BAT,BALL}

  ChooseField chooseField;

    enum typeOfBaller {Fast,spin} 

    enum fasterBallType {yorker,full,good,short,Bouncer,fullTose} 

    enum sppinerBallType {topSpin, Doosra, armBall, offBreak}

   enum typeOfShot {
                    scoop,
                    legGlance,
                    sweep,
                    hook,
                    pull,
                    onDrive,
                    loftedDrive,
                    straightDrive,
                    offDrive,
                    coverDrive,
                    squareDrive,
                    squareCut,
                    reveseSweep,
                    upeerCut
                    }


  //This is for generating the random number
  uint public randNumber = uint(keccak256(abi.encodePacked(block.timestamp,msg.sender))) % 2;
  bool update;
  // Function to check user won or not
  function tossChoss(uint256 number) public returns(bool) {
      if(number == randNumber){
          update = true;
          return true;
      }
      update = false;
      return false;
  }

  function fieldChoss(uint _value) public {
            require(uint(ChooseField.BALL) >= _value);
            chooseField = ChooseField(_value);
    }

    //This is for number of over
    uint256 public T5 = 5;
    uint256 public T10 = 10;
    uint256 public T20 = 20;
    function selectAnOver(uint256 numOver) view  public returns(string memory){
        if(T5 == numOver) {
            return "You have selected T5";
        }
        else if (T10 == numOver) {
            return "You have selected T10";
        }
        else if(T20 == numOver){
            return "You have selected T20";
        }
        else {
            return "Wrong input, Please Select T5,T10,T20 out any one";
        }
    }

    uint256 public run = 0;

    function runForBall(bool) view public {
        if(typeOfBaller.Faste){
            if(fasterBallType.yorker) {
              if(fasterBallType.yorker == typeOfShot.legGlance
                || fasterBallType.yorker == typeOfShot.scoop){
                run += 4;
            } 
             else if(fasterBallType.yorker == typeOfShot.straightDrive || 
             fasterBallType.yorker == typeOfShot.loftedDrive) {
                 run += 6;
            }
            
            else if(fasterBallType.yorker == typeOfShot.pull ||
                    fasterBallType.yorker == typeOfShot.hook || 
                    fasterBallType.yorker == typeOfShot.upeerCut ||
                    fasterBallType.yorker == typeOfShot.squareCut ||
                    fasterBallType.yorker == typeOfShot.squareDrive ||
                    fasterBallType.yorker == typeOfShot.coverDrive ||
                    fasterBallType.yorker == typeOfShot.offDrive){
                        run += 0;
                } 
            
            else if(fasterBallType.yorker == typeOfShot.sweep || 
                    fasterBallType.yorker == typeOfShot.reveseSweep ||
                    fasterBallType.yorker == typeOfShot.duck) {
                        run += 1;
                    }
            }

            else if(fasterBallType.full) {
                if(fasterBallType.full == typeOfShot.offDrive || 
                   fasterBallType.full == typeOfShot.onDrive || 
                   fasterBallType.full == typeOfShot.squareDrive ||
                   fasterBallType.full == typeOfShot.squareCut || 
                   fasterBallType.full == typeOfShot.pull ||
                   fasterBallType.full == typeOfShot.hook){
                       run += 4;
                   } 
                   else if(fasterBallType.full == typeOfShot.hook ||
                           fasterBallType.full == typeOfShot.loftedDrive || 
                           fasterBallType.full == typeOfShot.straightDrive || 
                           fasterBallType.full == typeOfShot.legGlance) {
                               run += 6;
                    }
                    else if(fasterBallType.full == typeOfShot.sweep ||
                             fasterBallType.full == typeOfShot.reveseSweep ){
                                 run += 0;
                    } else if(fasterBallType.full == typeOfShot.loftedDrive) {
                        run += 1;
                    }
        }

            else if(fasterBallType.good){

                if(fasterBallType.good == typeOfShot.pull || 
                  fasterBallType.good == typeOfShot.upeerCut ||
                  fasterBallType.good == typeOfShot.hook || 
                  fasterBallType.good == typeOfShot.squareCut){
                    run += 4;
                } 

                else if(fasterBallType.good == typeOfShot.scoop ||
                        fasterBallType.good == typeOfShot.legGlance ||
                        fasterBallType.good == typeOfShot.sweep ||
                        fasterBallType.good == typeOfShot.onDrive ||
                        fasterBallType.good == typeOfShot.loftedDrive ||
                        fasterBallType.good == typeOfShot.straightDrive ||
                        fasterBallType.good == typeOfShot.offDrive || 
                        fasterBallType.good == typeOfShot.coverDrive ||
                        fasterBallType.good == typeOfShot.squareDrive ||
                        fasterBallType.good == typeOfShot.reveseSweep)
                        {
                            run += 0;
                        }
                else if(fasterBallType.good == typeOfShot.duck) {
                    run += 1;
                }
            }

            else if(fasterBallType.short) {
                if(fasterBallType.short == typeOfShot.duck) {
                    run += 1;
                }
                else if(fasterBallType.short == typeOfShot.scoop ||
                   fasterBallType.short == typeOfShot.legGlance ||
                   fasterBallType.short == typeOfShot.hook || 
                   fasterBallType.short == typeOfShot.pull ||
                   fasterBallType.short == typeOfShot.squareCut 
                   ) {
                       run += 2;
                } 
                else if(fasterBallType.short == typeOfShot.onDrive ||
                        fasterBallType.short == typeOfShot.loftedDrive || 
                        fasterBallType.short == typeOfShot.straightDrive ||
                        fasterBallType.short == typeOfShot.offDrive || 
                        fasterBallType.short == typeOfShot.coverDrive || 
                        fasterBallType.short == typeOfShot.squareDrive || 
                        fasterBallType.short == typeOfShot.reveseSweep || 
                        fasterBallType.short == typeOfShot.upeerCut) {
                            run += 0;
                        }
            }
            else if(fasterBallType.bouncer){
                if(fasterBallType.bouncer == typeOfShot.pull ||
                   fasterBallType.bouncer == typeOfShot.hook ||
                   fasterBallType.bouncer == typeOfShot.scoop ||
                   fasterBallType.bouncer == typeOfShot.legGlance
                   ){
                       run+=6;
                   }
                else if(fasterBallType.bouncer == typeOfShot.sweep ||
                           fasterBallType.bouncer == typeOfShot.onDrive ||
                           fasterBallType.bouncer == typeOfShot.loftedDrive ||
                           fasterBallType.bouncer == typeOfShot.straightDrive ||
                           fasterBallType.bouncer == typeOfShot.offDrive ||
                           fasterBallType.bouncer == typeOfShot.coverDrive ||
                           fasterBallType.bouncer == typeOfShot.squareDrive ||
                           fasterBallType.bouncer == typeOfShot.squareCut ||
                           fasterBallType.bouncer == typeOfShot.reveseSweep || 
                           fasterBallType.bouncer == typeOfShot.upeerCut
                           ){
                               run += 0;
                           }

                else if(fasterBallType.bouncer == typeOfShot.duck){
                       run += 1;
                   }
            }
            else if(fasterBallType.fullTose){
                if(fasterBallType.fullTose == typeOfShot.hook ||
                  fasterBallType.fullTose == typeOfShot.legGlance||
                  fasterBallType.fullTose == typeOfShot.hook ||
                  fasterBallType.fullTose == typeOfShot.pull ||
                  fasterBallType.fullTose == typeOfShot.onDrive || 
                  fasterBallType.fullTose == typeOfShot.loftedDrive
                  )
                {
                    run += 6;
                }
                
                else if(fasterBallType.fullTose == typeOfShot.straightDrive || 
                        fasterBallType.fullTose == typeOfShot.offDrive || 
                        fasterBallType.fullTose == typeOfShot.coverDrive ||
                        fasterBallType.fullTose == typeOfShot.squareDrive 
                        )
                {
                    run += 4;
                }
                
                else if(fasterBallType.fullTose == typeOfShot.scoop ||
                       fasterBallType.fullTose == typeOfShot.sweep || 
                        fasterBallType.fullTose == typeOfShot.squareCut ||
                        fasterBallType.fullTose == typeOfShot.reveseSweep ||
                        fasterBallType.fullTose == typeOfShot.upeerCut
                       )
                {
                    run += 0;
                }
            }
        }

        // THis is for spinner don't use it right now

        else if(typeOfBaller.Spin){
         if(sppinerBallType.topSpin) {
             if(sppinerBallType.topSpin == )
            
         }
        }

}
