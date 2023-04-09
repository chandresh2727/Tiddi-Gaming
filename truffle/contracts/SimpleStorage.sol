// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract tiddit{

    enum ChooseField {Tie,BAT,BALL}
    ChooseField public chooseField;

    enum TypeOfBaller {Fast,Spin} 
    TypeOfBaller public typeOfBaller;

    enum FasterBallType {yorker,full,good,short,bouncer,fullTose} 
    FasterBallType public fasterBallType;

    enum SppinerBallType {topSpin, Doosra, armBall, offBreak}
    SppinerBallType public sppinerBallType;

    // yorker => Dab,Scoop,Drive,Reverse Sweep,
    enum TypeOfShot {
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
                    duck,
                    reveseSweep,
                    upeerCut
                    }

    TypeOfShot typeOfShot;

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

    //Edit bool , if-else
    function fieldChoss(uint _value) public {
            require(uint(ChooseField.BALL) == _value);
            chooseField = ChooseField(_value);
    }

    // uint256 winAmount = 1 ETH;

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

    


    //Computer side random number generator
    //uint public randNumber = uint(keccak256(abi.encodePacked(block.timestamp,msg.sender))) % 2;

    uint256 public  typeComputerBalling = uint(keccak256(abi.encodePacked(block.timestamp,msg.sender))) % 2;
    
    uint256 public fastComputer = uint(keccak256(abi.encodePacked(block.timestamp,msg.sender))) % 6;

    uint256 public spinComputer = uint(keccak256(abi.encodePacked(block.timestamp,msg.sender))) % 4;
    
    uint256 run = 0;

    function computerSideGame() public view returns(uint256){
        
        //  0 ==>> Fast, 1 ==>> spinner 
        if(typeComputerBalling == 0) {
            if(fastComputer == 0){
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
            }

        else if(fastComputer == 1){
            if(fasterBallType.full){
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
        else if(fastComputer == 2){
            if(fasterBallType.good){

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
        }

        else if(fastComputer == 3){
            if(fasterBallType.short) {
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
        }
        else if(fastComputer == 4){
            if(fasterBallType.bouncer){
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
        }
        else if(fasterBallType == 5){
            if(fasterBallType.fullTose){
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
        }


        //This is for spin type of an bolwing  
        else if(typeComputerBalling == 1){
            if(spinComputer == 0){
            if(sppinerBallType.topSpin) {
             if(sppinerBallType.topSpin == typeOfShot.sweep ||
                sppinerBallType.topSpin == typeOfShot.loftedDrive ||
                sppinerBallType.topSpin == typeOfShot.reveseSweep)
              { 
                  run += 6;
              }
             else if(sppinerBallType.topSpin == typeOfShot.scoop || 
                    sppinerBallType.topSpin == typeOfShot.legGlance ||
                    sppinerBallType.topSpin == typeOfShot.hook || 
                    sppinerBallType.topSpin == typeOfShot.pull || 
                    sppinerBallType.topSpin == typeOfShot.squareCut || 
                    sppinerBallType.topSpin == typeOfShot.upeerCut
                    )
              {
                         run += 0;
              }
             else if(sppinerBallType.topSpin == typeOfShot.onDrive || 
                    sppinerBallType.topSpin == typeOfShot.straightDrive ||
                    sppinerBallType.topSpin == typeOfShot.offDrive ||
                    sppinerBallType.topSpin == typeOfShot.coverDrive ||
                    sppinerBallType.topSpin == typeOfShot.squareDrive
                    )
              {
                  run += 4;
              }
              else if(sppinerBallType.topSpin == typeOfShot.duck){
                  run += 1;
              }
            }
            }
        }

            else if(spinComputer == 1){
                if(sppinerBallType.Doosra){
                if(sppinerBallType.Doosra == typeOfShot.sweep ||
                     sppinerBallType.Doosra == typeOfShot.reveseSweep)
                  {
                      run += 6;
                  }
                  else if(sppinerBallType.Doosra == typeOfShot.legGlance ||
                         sppinerBallType.Doosra == typeOfShot.loftedDrive ||
                         sppinerBallType.Doosra == typeOfShot.straightDrive)
                  {
                      run += 4;
                      }
                  else if(sppinerBallType.Doosra == typeOfShot.duck)
                  {
                      run += 1;
                      }
                  else if(sppinerBallType.Doosra == typeOfShot.scoop ||
                        sppinerBallType.Doosra == typeOfShot.hook ||
                        sppinerBallType.Doosra == typeOfShot.pull ||
                        sppinerBallType.Doosra == typeOfShot.onDrive ||
                        sppinerBallType.Doosra == typeOfShot.offDrive ||
                        sppinerBallType.Doosra == typeOfShot.coverDrive ||
                        sppinerBallType.Doosra == typeOfShot.squareDrive || 
                        sppinerBallType.Doosra == typeOfShot.squareCut ||
                        sppinerBallType.Doosra == typeOfShot.upeerCut)
                  {
                      run += 0;
                  }
            }
            }

            else if(spinComputer == 2){
                if(SppinerBallType.armBall){
                    if(sppinerBallType.armBall == typeOfShot.sweep ||
                        sppinerBallType.armBall == typeOfShot.loftedDrive ||
                        sppinerBallType.armBall == typeOfShot.reveseSweep){
                          run += 6;
                      } 
                      else if(sppinerBallType.armBall == typeOfShot.scoop || 
                             sppinerBallType.armBall == typeOfShot.onDrive || 
                             sppinerBallType.armBall == typeOfShot.straightDrive) {
                          run += 4;
                      }
                      else if(sppinerBallType.armBall == typeOfShot.legGlance ||
                              sppinerBallType.armBall == typeOfShot.offDrive ||
                              sppinerBallType.armBall == typeOfShot.coverDrive ||
                              sppinerBallType.armBall == typeOfShot.squareDrive ||
                              sppinerBallType.armBall == typeOfShot.duck) {
                          run += 1;
                      }
                      else if(sppinerBallType.armBall == typeOfShot.hook ||
                              sppinerBallType.armBall == typeOfShot.pull || 
                              sppinerBallType.armBall == typeOfShot.squareCut ||
                              sppinerBallType.armBall == typeOfShot.upeerCut
                              ) {
                          run += 0;
                      }
                }
            }
            else if(spinComputer == 3){
                if(sppinerBallType.offBreak){
                    if(sppinerBallType.offBreak == typeOfShot.sweep ||
                      sppinerBallType.offBreak == typeOfShot.loftedDrive ||
                      sppinerBallType.offBreak == typeOfShot.reveseSweep){
                          run += 6;
                      } 
                      else if(sppinerBallType.offBreak == typeOfShot.straightDrive 
                             ){
                          run += 4;
                      }
                      else if(sppinerBallType.offBreak == typeOfShot.scoop ||
                              sppinerBallType.offBreak == typeOfShot.legGlance ||
                              sppinerBallType.offBreak == typeOfShot.onDrive ||
                              sppinerBallType.offBreak == typeOfShot.offDrive ||
                              sppinerBallType.offBreak == typeOfShot.coverDrive ||
                              sppinerBallType.offBreak == typeOfShot.squareDrive ){
                          run += 1;
                      }
                      else if(sppinerBallType.offBreak == typeOfShot.hook ||
                              sppinerBallType.offBreak == typeOfShot.pull ||
                              sppinerBallType.offBreak == typeOfShot.squareCut ||
                              sppinerBallType.offBreak == typeOfShot.upeerCut){
                          run += 0;
                      }
                }
            }
            }
            return run;
        }

    //Bool,uint insted bool 
    function runForBall() view public {
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
             if(sppinerBallType.topSpin == typeOfShot.sweep ||
                sppinerBallType.topSpin == typeOfShot.loftedDrive ||
                sppinerBallType.topSpin == typeOfShot.reveseSweep)
              { 
                  run += 6;
              }
             else if(sppinerBallType.topSpin == typeOfShot.scoop || 
                    sppinerBallType.topSpin == typeOfShot.legGlance ||
                    sppinerBallType.topSpin == typeOfShot.hook || 
                    sppinerBallType.topSpin == typeOfShot.pull || 
                    sppinerBallType.topSpin == typeOfShot.squareCut || 
                    sppinerBallType.topSpin == typeOfShot.upeerCut
                    )
              {
                         run += 0;
              }
             else if(sppinerBallType.topSpin == typeOfShot.onDrive || 
                    sppinerBallType.topSpin == typeOfShot.straightDrive ||
                    sppinerBallType.topSpin == typeOfShot.offDrive ||
                    sppinerBallType.topSpin == typeOfShot.coverDrive ||
                    sppinerBallType.topSpin == typeOfShot.squareDrive
                    )
              {
                  run += 4;
              }
              else if(sppinerBallType.topSpin == typeOfShot.duck){
                  run += 1;
              }

              else if(sppinerBallType.Doosra){
                  // Baki work from here 
                  if(sppinerBallType.Doosra == typeOfShot.sweep ||
                     sppinerBallType.Doosra == typeOfShot.reveseSweep)
                  {
                      run += 6;
                  }
                  else if(sppinerBallType.Doosra == typeOfShot.legGlance ||
                         sppinerBallType.Doosra == typeOfShot.loftedDrive ||
                         sppinerBallType.Doosra == typeOfShot.straightDrive)
                  {
                      run += 4;
                      }
                  else if(sppinerBallType.Doosra == typeOfShot.duck)
                  {
                      run += 1;
                      }
                  else if(sppinerBallType.Doosra == typeOfShot.scoop ||
                        sppinerBallType.Doosra == typeOfShot.hook ||
                        sppinerBallType.Doosra == typeOfShot.pull ||
                        sppinerBallType.Doosra == typeOfShot.onDrive ||
                        sppinerBallType.Doosra == typeOfShot.offDrive ||
                        sppinerBallType.Doosra == typeOfShot.coverDrive ||
                        sppinerBallType.Doosra == typeOfShot.squareDrive || 
                        sppinerBallType.Doosra == typeOfShot.squareCut ||
                        sppinerBallType.Doosra == typeOfShot.upeerCut)
                  {
                      run += 0;
                  }
                  }

                  else if(sppinerBallType.armBall){
                      if(sppinerBallType.armBall == typeOfShot.sweep ||
                        sppinerBallType.armBall == typeOfShot.loftedDrive ||
                        sppinerBallType.armBall == typeOfShot.reveseSweep){
                          run += 6;
                      } 
                      else if(sppinerBallType.armBall == typeOfShot.scoop || 
                             sppinerBallType.armBall == typeOfShot.onDrive || 
                             sppinerBallType.armBall == typeOfShot.straightDrive) {
                          run += 4;
                      }
                      else if(sppinerBallType.armBall == typeOfShot.legGlance ||
                              sppinerBallType.armBall == typeOfShot.offDrive ||
                              sppinerBallType.armBall == typeOfShot.coverDrive ||
                              sppinerBallType.armBall == typeOfShot.squareDrive ||
                              sppinerBallType.armBall == typeOfShot.duck) {
                          run += 1;
                      }
                      else if(sppinerBallType.armBall == typeOfShot.hook ||
                              sppinerBallType.armBall == typeOfShot.pull || 
                              sppinerBallType.armBall == typeOfShot.squareCut ||
                              sppinerBallType.armBall == typeOfShot.upeerCut
                              ) {
                          run += 0;
                      }
                  }

                  else if(sppinerBallType.offBreak){
                      if(sppinerBallType.offBreak == typeOfShot.sweep ||
                      sppinerBallType.offBreak == typeOfShot.loftedDrive ||
                      sppinerBallType.offBreak == typeOfShot.reveseSweep){
                          run += 6;
                      } 
                      else if(sppinerBallType.offBreak == typeOfShot.straightDrive
                             ){
                          run += 4;
                      }
                      else if(sppinerBallType.offBreak == typeOfShot.scoop ||
                              sppinerBallType.offBreak == typeOfShot.legGlance ||
                              sppinerBallType.offBreak == typeOfShot.onDrive ||
                              sppinerBallType.offBreak == typeOfShot.offDrive ||
                              sppinerBallType.offBreak == typeOfShot.coverDrive ||
                              sppinerBallType.offBreak == typeOfShot.squareDrive ){
                          run += 1;
                      }
                      else if(sppinerBallType.offBreak == typeOfShot.hook ||
                              sppinerBallType.offBreak == typeOfShot.pull ||
                              sppinerBallType.offBreak == typeOfShot.squareCut ||
                              sppinerBallType.offBreak == typeOfShot.upeerCut){
                          run += 0;
                      }
                  }
            
         }

    }

    // uint256 run = 0;

    // functtion setTheRun() public view {
    //     if()
    // }

//     enum ChooseField {Tie,BAT,BALL}
//     ChooseField chooseField;

//     uint randNum = uint(keccak256(abi.encodePacked(block.timestamp,msg.sender))) % 2;}

//     function checkField(uint _value) public {
//       if(_value == randNumber)
//         require(uint(ChooseField.BALL) >= _value);
//         chooseField = ChooseField(_value);
//   }

}
}




//Over Counyt
//Run functio peramter 
//Compuer ka two player 
//OVER DELETE
//
//ERC721 TOKENS MENTAING
//RUN COUNT 
//Number of ball 2
//player 1 and player 2 (run,ball,wicket)
//2nd ening target 
//computer bating karve 
//
//high score Documentery 
//5 OVER AND 2 BALL 
//TOTALRUN, COUNTTOTALLRUN 

