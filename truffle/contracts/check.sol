// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

<<<<<<< HEAD
contract check{
=======
contract Check{
>>>>>>> 4fe9794198af9a07891a4b2e069cd8df79b25973

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
    // uint256 public T5 = 5;
    // uint256 public T10 = 10;
    // uint256 public T20 = 20;
    // function selectAnOver(uint256 numOver) view  public returns(string memory){
    //     if(T5 == numOver) {
    //         return "You have selected T5";
    //     }
    //     else if (T10 == numOver) {
    //         return "You have selected T10";
    //     }
    //     else if(T20 == numOver){
    //         return "You have selected T20";
    //     }
    //     else {
    //         return "Wrong input, Please Select T5,T10,T20 out any one";
    //     }
    // }

    // Here we gone fix the over for an user 


    //Computer side random number generator
    //uint public randNumber = uint(keccak256(abi.encodePacked(block.timestamp,msg.sender))) % 2;

    uint256 public  typeComputerBalling = uint(keccak256(abi.encodePacked(block.timestamp,msg.sender))) % 2;
    
    uint256 public fastComputer = uint(keccak256(abi.encodePacked(block.timestamp,msg.sender))) % 6;

    uint256 public spinComputer = uint(keccak256(abi.encodePacked(block.timestamp,msg.sender))) % 4;
    
    // uint256 public run = 0;

    bool public rightChooise = true;


    //This is for number of Ball
    modifier numOfBalll(uint noBall)
    {
        for(noBall = 1;noBall <=2; noBall++){
            _;
        }
        // if(exp >= 5)
        //     _;
        // else
        //     revert("Must have a minimum of 5 years of experience");
    }

    //This is for number of Over
    modifier numOfOver(uint noOver){
        for(noOver = 1;noOver <= 5;noOver++){
            _;
        }
    }

    function computerSideGame() public numOfBalll(1) numOfOver(1) returns(uint256 run){
        
        //  0 ==>> Fast, 1 ==>> spinner 
        
        if(typeComputerBalling == 0) {
            if(fastComputer == 0){
                if(((fasterBallType == FasterBallType.yorker) && ( typeOfShot== TypeOfShot.legGlance))
                 || ((fasterBallType == FasterBallType.yorker) && (typeOfShot == TypeOfShot.scoop))){
                 run += 4;
            } 
             else if(((fasterBallType == FasterBallType.yorker)) && (typeOfShot == TypeOfShot.straightDrive) || 
             (fasterBallType == FasterBallType.yorker) && (typeOfShot == TypeOfShot.loftedDrive)) {
                 run += 6;
            }
            
            else if((fasterBallType == FasterBallType.yorker) && (typeOfShot == TypeOfShot.pull) ||
                    (fasterBallType == FasterBallType.yorker) && (typeOfShot == TypeOfShot.hook) || 
                    (fasterBallType == FasterBallType.yorker) && (typeOfShot == TypeOfShot.upeerCut) ||
                    (fasterBallType == FasterBallType.yorker) && (typeOfShot == TypeOfShot.squareCut) ||
                    (fasterBallType == FasterBallType.yorker) && (typeOfShot == TypeOfShot.squareDrive) ||
                    (fasterBallType == FasterBallType.yorker) && (typeOfShot == TypeOfShot.coverDrive) ||
                    (fasterBallType == FasterBallType.yorker) && (typeOfShot == TypeOfShot.offDrive)){
                        run += 0;
                } 
            
            else if((fasterBallType == FasterBallType.yorker) && (typeOfShot == TypeOfShot.sweep) || 
                    (fasterBallType == FasterBallType.yorker) && (typeOfShot == TypeOfShot.reveseSweep) ||
                    (fasterBallType == FasterBallType.yorker) && (typeOfShot == TypeOfShot.duck)) {
                        run += 1;
                    }
            }

        else if(fastComputer == 1){
            if((fasterBallType == FasterBallType.full)){
                if((fasterBallType == FasterBallType.full) && (typeOfShot == TypeOfShot.offDrive) || 
                   (fasterBallType == FasterBallType.full) && (typeOfShot == TypeOfShot.onDrive) || 
                   (fasterBallType == FasterBallType.full) && (typeOfShot == TypeOfShot.squareDrive) ||
                   (fasterBallType == FasterBallType.full) && (typeOfShot == TypeOfShot.squareCut) || 
                   (fasterBallType == FasterBallType.full) && (typeOfShot == TypeOfShot.pull) ||
                   (fasterBallType == FasterBallType.full) && (typeOfShot == TypeOfShot.hook)){
                       run += 4;
                   } 
                   else if((fasterBallType == FasterBallType.full) && (typeOfShot == TypeOfShot.hook) ||
                           (fasterBallType == FasterBallType.full) && (typeOfShot == TypeOfShot.loftedDrive) || 
                           (fasterBallType == FasterBallType.full) && (typeOfShot == TypeOfShot.straightDrive) || 
                           (fasterBallType == FasterBallType.full) && (typeOfShot == TypeOfShot.legGlance)) {
                               run += 6;
                    }
                    else if((fasterBallType == FasterBallType.full) && (typeOfShot == TypeOfShot.sweep) ||
                             (fasterBallType == FasterBallType.full) && (typeOfShot == TypeOfShot.reveseSweep) ){
                                 run += 0;
                    } else if((fasterBallType == FasterBallType.full) && (typeOfShot == TypeOfShot.loftedDrive)) {
                        run += 1;
                    }
            }
        else if(fastComputer == 2){
            if((fasterBallType == FasterBallType.good)){

                if((fasterBallType == FasterBallType.good) && (typeOfShot == TypeOfShot.pull) || 
                  (fasterBallType == FasterBallType.good) && (typeOfShot == TypeOfShot.upeerCut) ||
                  (fasterBallType == FasterBallType.good) && (typeOfShot == TypeOfShot.hook) || 
                  (fasterBallType == FasterBallType.good) && (typeOfShot == TypeOfShot.squareCut)){
                    run += 4;
                } 

                else if((fasterBallType == FasterBallType.good) && (typeOfShot == TypeOfShot.scoop) ||
                        (fasterBallType == FasterBallType.good) && (typeOfShot == TypeOfShot.legGlance) ||
                        (fasterBallType == FasterBallType.good) && (typeOfShot == TypeOfShot.sweep) ||
                        (fasterBallType == FasterBallType.good) && (typeOfShot == TypeOfShot.onDrive) ||
                        (fasterBallType == FasterBallType.good) && (typeOfShot == TypeOfShot.loftedDrive) ||
                        (fasterBallType == FasterBallType.good) && (typeOfShot == TypeOfShot.straightDrive) ||
                        (fasterBallType == FasterBallType.good) && (typeOfShot == TypeOfShot.offDrive) || 
                        (fasterBallType == FasterBallType.good) && (typeOfShot == TypeOfShot.coverDrive) ||
                        (fasterBallType == FasterBallType.good) && (typeOfShot == TypeOfShot.squareDrive) ||
                        (fasterBallType == FasterBallType.good) && (typeOfShot == TypeOfShot.reveseSweep))
                        {
                            run += 0;
                        }
                else if((fasterBallType == FasterBallType.good) && (typeOfShot == TypeOfShot.duck)) {
                    run += 1;
                }
        }
        }
        }

        else if(fastComputer == 3){
            if((fasterBallType == FasterBallType.short)) {
                if((fasterBallType == FasterBallType.short) && (typeOfShot == TypeOfShot.duck)) {
                    run += 1;
                }
                else if((fasterBallType == FasterBallType.short) && (typeOfShot == TypeOfShot.scoop) ||
                   (fasterBallType == FasterBallType.short) && (typeOfShot == TypeOfShot.legGlance) ||
                   (fasterBallType == FasterBallType.short) && (typeOfShot == TypeOfShot.hook) || 
                   (fasterBallType == FasterBallType.short) && (typeOfShot == TypeOfShot.pull) ||
                   (fasterBallType == FasterBallType.short) && (typeOfShot == TypeOfShot.squareCut) 
                   ) {
                       run += 2;
                } 
                else if((fasterBallType == FasterBallType.short) && (typeOfShot == TypeOfShot.onDrive) ||
                        (fasterBallType == FasterBallType.short) && (typeOfShot == TypeOfShot.loftedDrive) || 
                        (fasterBallType == FasterBallType.short) && (typeOfShot == TypeOfShot.straightDrive) ||
                        (fasterBallType == FasterBallType.short) && (typeOfShot == TypeOfShot.offDrive) || 
                        (fasterBallType == FasterBallType.short) && (typeOfShot == TypeOfShot.coverDrive) || 
                        (fasterBallType == FasterBallType.short) && (typeOfShot == TypeOfShot.squareDrive) || 
                        (fasterBallType == FasterBallType.short) && (typeOfShot == TypeOfShot.reveseSweep) || 
                        (fasterBallType == FasterBallType.short) && (typeOfShot == TypeOfShot.upeerCut)) {
                            run += 0;
                        }
            }
        }
        else if(fastComputer == 4){
            if((fasterBallType == FasterBallType.bouncer)){
                if((fasterBallType == FasterBallType.bouncer) && (typeOfShot == TypeOfShot.pull) ||
                   (fasterBallType == FasterBallType.bouncer) && (typeOfShot == TypeOfShot.hook) ||
                   (fasterBallType == FasterBallType.bouncer) && (typeOfShot == TypeOfShot.scoop) ||
                   (fasterBallType == FasterBallType.bouncer) && (typeOfShot == TypeOfShot.legGlance)
                   ){
                       run+=6;
                   }
                else if((fasterBallType == FasterBallType.bouncer) && (typeOfShot == TypeOfShot.sweep) ||
                           (fasterBallType == FasterBallType.bouncer) && (typeOfShot == TypeOfShot.onDrive) ||
                           (fasterBallType == FasterBallType.bouncer) && (typeOfShot == TypeOfShot.loftedDrive) ||
                           (fasterBallType == FasterBallType.bouncer) && (typeOfShot == TypeOfShot.straightDrive) ||
                           (fasterBallType == FasterBallType.bouncer) && (typeOfShot == TypeOfShot.offDrive) ||
                           (fasterBallType == FasterBallType.bouncer) && (typeOfShot == TypeOfShot.coverDrive) ||
                           (fasterBallType == FasterBallType.bouncer) && (typeOfShot == TypeOfShot.squareDrive) ||
                           (fasterBallType == FasterBallType.bouncer) && (typeOfShot == TypeOfShot.squareCut) ||
                           (fasterBallType == FasterBallType.bouncer) && (typeOfShot == TypeOfShot.reveseSweep) || 
                           (fasterBallType == FasterBallType.bouncer) && (typeOfShot == TypeOfShot.upeerCut)
                           ){
                               run += 0;
                           }

                else if((fasterBallType == FasterBallType.bouncer) && (typeOfShot == TypeOfShot.duck)){
                       run += 1;
                   }
            }
        }
        else if(fastComputer == 5){
            if((fasterBallType == FasterBallType.fullTose)){
                if((fasterBallType == FasterBallType.fullTose) && (typeOfShot == TypeOfShot.hook) ||
                  (fasterBallType == FasterBallType.fullTose) && (typeOfShot == TypeOfShot.legGlance)||
                  (fasterBallType == FasterBallType.fullTose) && (typeOfShot == TypeOfShot.hook) ||
                  (fasterBallType == FasterBallType.fullTose) && (typeOfShot == TypeOfShot.pull) ||
                  (fasterBallType == FasterBallType.fullTose) && (typeOfShot == TypeOfShot.onDrive) || 
                  (fasterBallType == FasterBallType.fullTose) && (typeOfShot == TypeOfShot.loftedDrive)
                  )
                {
                    run += 6;
                }
                
                else if((fasterBallType == FasterBallType.fullTose) && (typeOfShot == TypeOfShot.straightDrive) || 
                        (fasterBallType == FasterBallType.fullTose) && (typeOfShot == TypeOfShot.offDrive) || 
                        (fasterBallType == FasterBallType.fullTose) && (typeOfShot == TypeOfShot.coverDrive) ||
                        (fasterBallType == FasterBallType.fullTose) && (typeOfShot == TypeOfShot.squareDrive) 
                        )
                {
                    run += 4;
                }
                
                else if((fasterBallType == FasterBallType.fullTose) && (typeOfShot == TypeOfShot.scoop) ||
                       (fasterBallType == FasterBallType.fullTose) && (typeOfShot == TypeOfShot.sweep) || 
                        (fasterBallType == FasterBallType.fullTose) && (typeOfShot == TypeOfShot.squareCut) ||
                        (fasterBallType == FasterBallType.fullTose) && (typeOfShot == TypeOfShot.reveseSweep) ||
                        (fasterBallType == FasterBallType.fullTose) && (typeOfShot == TypeOfShot.upeerCut)
                       )
                {
                    run += 0;
                }
            }
        }


        //This is for spin type of an bolwing  
        else if(typeComputerBalling == 1){
            if(spinComputer == 0){
            if(sppinerBallType == SppinerBallType.topSpin) {
             if((sppinerBallType == SppinerBallType.topSpin) && (typeOfShot == TypeOfShot.sweep) ||
                (sppinerBallType == SppinerBallType.topSpin) && (typeOfShot == TypeOfShot.loftedDrive) ||
                (sppinerBallType == SppinerBallType.topSpin) && (typeOfShot == TypeOfShot.reveseSweep))
              { 
                  run += 6;
              }
             else if((sppinerBallType == SppinerBallType.topSpin) && (typeOfShot == TypeOfShot.scoop) || 
                    (sppinerBallType == SppinerBallType.topSpin) && (typeOfShot == TypeOfShot.legGlance) ||
                    (sppinerBallType == SppinerBallType.topSpin) && (typeOfShot == TypeOfShot.hook) || 
                    (sppinerBallType == SppinerBallType.topSpin) && (typeOfShot == TypeOfShot.pull) || 
                    (sppinerBallType == SppinerBallType.topSpin) && (typeOfShot == TypeOfShot.squareCut) || 
                    (sppinerBallType == SppinerBallType.topSpin) && (typeOfShot == TypeOfShot.upeerCut)
                    )
              {
                         run += 0;
              }
             else if((sppinerBallType == SppinerBallType.topSpin) && (typeOfShot == TypeOfShot.onDrive) || 
                    (sppinerBallType == SppinerBallType.topSpin) && (typeOfShot == TypeOfShot.straightDrive) ||
                    (sppinerBallType == SppinerBallType.topSpin) && (typeOfShot == TypeOfShot.offDrive) ||
                    (sppinerBallType == SppinerBallType.topSpin) && (typeOfShot == TypeOfShot.coverDrive) ||
                    (sppinerBallType == SppinerBallType.topSpin) && (typeOfShot == TypeOfShot.squareDrive)
                    )
              {
                  run += 4;
              }
              else if((sppinerBallType == SppinerBallType.topSpin) && (typeOfShot == TypeOfShot.duck)){
                  run += 1;
              }
            }
            }
        }

            else if(spinComputer == 1){
                if((sppinerBallType == SppinerBallType.Doosra)){
                if((sppinerBallType == SppinerBallType.Doosra) && (typeOfShot == TypeOfShot.sweep) ||
                     (sppinerBallType == SppinerBallType.Doosra) && (typeOfShot == TypeOfShot.reveseSweep))
                  {
                      run += 6;
                  }
                  else if((sppinerBallType == SppinerBallType.Doosra) && (typeOfShot == TypeOfShot.legGlance) ||
                         (sppinerBallType == SppinerBallType.Doosra) && (typeOfShot == TypeOfShot.loftedDrive) ||
                         (sppinerBallType == SppinerBallType.Doosra) && (typeOfShot == TypeOfShot.straightDrive))
                  {
                      run += 4;
                      }
                  else if((sppinerBallType == SppinerBallType.Doosra) && (typeOfShot == TypeOfShot.duck))
                  {
                      run += 1;
                      }
                  else if((sppinerBallType == SppinerBallType.Doosra) && (typeOfShot == TypeOfShot.scoop) ||
                        (sppinerBallType == SppinerBallType.Doosra) && (typeOfShot == TypeOfShot.hook) ||
                        (sppinerBallType == SppinerBallType.Doosra) && (typeOfShot == TypeOfShot.pull) ||
                        (sppinerBallType == SppinerBallType.Doosra) && (typeOfShot == TypeOfShot.onDrive) ||
                        (sppinerBallType == SppinerBallType.Doosra) && (typeOfShot == TypeOfShot.offDrive) ||
                        (sppinerBallType == SppinerBallType.Doosra) && (typeOfShot == TypeOfShot.coverDrive) ||
                        (sppinerBallType == SppinerBallType.Doosra) && (typeOfShot == TypeOfShot.squareDrive) || 
                        (sppinerBallType == SppinerBallType.Doosra) && (typeOfShot == TypeOfShot.squareCut) ||
                        (sppinerBallType == SppinerBallType.Doosra) && (typeOfShot == TypeOfShot.upeerCut))
                  {
                      run += 0;
                  }
            }
            }

            else if(spinComputer == 2){
                if((sppinerBallType == SppinerBallType.armBall)){
                    if((sppinerBallType == SppinerBallType.armBall) && (typeOfShot == TypeOfShot.sweep) ||
                        (sppinerBallType == SppinerBallType.armBall) && (typeOfShot == TypeOfShot.loftedDrive) ||
                        (sppinerBallType == SppinerBallType.armBall) && (typeOfShot == TypeOfShot.reveseSweep)){
                          run += 6;
                      } 
                      else if((sppinerBallType == SppinerBallType.armBall) && (typeOfShot == TypeOfShot.scoop) || 
                             (sppinerBallType == SppinerBallType.armBall) && (typeOfShot == TypeOfShot.onDrive) || 
                             (sppinerBallType == SppinerBallType.armBall) && (typeOfShot == TypeOfShot.straightDrive)) {
                          run += 4;
                      }
                      else if((sppinerBallType == SppinerBallType.armBall) && (typeOfShot == TypeOfShot.legGlance) ||
                              (sppinerBallType == SppinerBallType.armBall) && (typeOfShot == TypeOfShot.offDrive) ||
                              (sppinerBallType == SppinerBallType.armBall) && (typeOfShot == TypeOfShot.coverDrive) ||
                              (sppinerBallType == SppinerBallType.armBall) && (typeOfShot == TypeOfShot.squareDrive) ||
                              (sppinerBallType == SppinerBallType.armBall) && (typeOfShot == TypeOfShot.duck)) {
                          run += 1;
                      }
                      else if((sppinerBallType == SppinerBallType.armBall) && (typeOfShot == TypeOfShot.hook) ||
                              (sppinerBallType == SppinerBallType.armBall) && (typeOfShot == TypeOfShot.pull) || 
                              (sppinerBallType == SppinerBallType.armBall) && (typeOfShot == TypeOfShot.squareCut) ||
                              (sppinerBallType == SppinerBallType.armBall) && (typeOfShot == TypeOfShot.upeerCut)
                              ) {
                          run += 0;
                      }
                }
            }
            else if(spinComputer == 3){
                if((sppinerBallType == SppinerBallType.offBreak)){
                    if((sppinerBallType == SppinerBallType.offBreak) && (typeOfShot == TypeOfShot.sweep) ||
                      (sppinerBallType == SppinerBallType.offBreak) && (typeOfShot == TypeOfShot.loftedDrive) ||
                      (sppinerBallType == SppinerBallType.offBreak) && (typeOfShot == TypeOfShot.reveseSweep)){
                          run += 6;
                      } 
                      else if((sppinerBallType == SppinerBallType.offBreak) && (typeOfShot == TypeOfShot.straightDrive) 
                             ){
                          run += 4;
                      }
                      else if((sppinerBallType == SppinerBallType.offBreak) && (typeOfShot == TypeOfShot.scoop) ||
                              (sppinerBallType == SppinerBallType.offBreak) && (typeOfShot == TypeOfShot.legGlance) ||
                              (sppinerBallType == SppinerBallType.offBreak) && (typeOfShot == TypeOfShot.onDrive) ||
                              (sppinerBallType == SppinerBallType.offBreak) && (typeOfShot == TypeOfShot.offDrive) ||
                              (sppinerBallType == SppinerBallType.offBreak) && (typeOfShot == TypeOfShot.coverDrive) ||
                              (sppinerBallType == SppinerBallType.offBreak) && (typeOfShot == TypeOfShot.squareDrive) ){
                          run += 1;
                      }
                      else if((sppinerBallType == SppinerBallType.offBreak) && (typeOfShot == TypeOfShot.hook) ||
                              (sppinerBallType == SppinerBallType.offBreak) && (typeOfShot == TypeOfShot.pull) ||
                              (sppinerBallType == SppinerBallType.offBreak) && (typeOfShot == TypeOfShot.squareCut) ||
                              (sppinerBallType == SppinerBallType.offBreak) && (typeOfShot == TypeOfShot.upeerCut)){
                          run += 0;
                      }
                }
            }
            }
            run;
        }

    //Bool,uint insted bool 
    function runForBall() public numOfOver(1) numOfBalll(1) returns(uint256 run) {
        if(typeOfBaller == TypeOfBaller.Fast){
            if((fasterBallType == FasterBallType.yorker)) {
              if((fasterBallType == FasterBallType.yorker) && (typeOfShot == TypeOfShot.legGlance)
                || (fasterBallType == FasterBallType.yorker) && (typeOfShot == TypeOfShot.scoop)){
                run += 4;
            } 
             else if((fasterBallType == FasterBallType.yorker) && (typeOfShot == TypeOfShot.straightDrive) || 
             (fasterBallType == FasterBallType.yorker) && (typeOfShot == TypeOfShot.loftedDrive)) {
                 run += 6;
            }
            
            else if((fasterBallType == FasterBallType.yorker) && (typeOfShot == TypeOfShot.pull) ||
                    (fasterBallType == FasterBallType.yorker) && (typeOfShot == TypeOfShot.hook) || 
                    (fasterBallType == FasterBallType.yorker) && (typeOfShot == TypeOfShot.upeerCut) ||
                    (fasterBallType == FasterBallType.yorker) && (typeOfShot == TypeOfShot.squareCut) ||
                    (fasterBallType == FasterBallType.yorker) && (typeOfShot == TypeOfShot.squareDrive) ||
                    (fasterBallType == FasterBallType.yorker) && (typeOfShot == TypeOfShot.coverDrive) ||
                    (fasterBallType == FasterBallType.yorker) && (typeOfShot == TypeOfShot.offDrive)){
                        run += 0;
                } 
            
            else if((fasterBallType == FasterBallType.yorker) && (typeOfShot == TypeOfShot.sweep) || 
                    (fasterBallType == FasterBallType.yorker) && (typeOfShot == TypeOfShot.reveseSweep) ||
                    (fasterBallType == FasterBallType.yorker) && (typeOfShot == TypeOfShot.duck)) {
                        run += 1;
                    }
            }

            else if((fasterBallType == FasterBallType.full)) {
                if((fasterBallType == FasterBallType.full) && (typeOfShot == TypeOfShot.offDrive) || 
                   (fasterBallType == FasterBallType.full) && (typeOfShot == TypeOfShot.onDrive) || 
                   (fasterBallType == FasterBallType.full) && (typeOfShot == TypeOfShot.squareDrive) ||
                   (fasterBallType == FasterBallType.full) && (typeOfShot == TypeOfShot.squareCut) || 
                   (fasterBallType == FasterBallType.full) && (typeOfShot == TypeOfShot.pull) ||
                   (fasterBallType == FasterBallType.full) && (typeOfShot == TypeOfShot.hook)){
                       run += 4;
                   } 
                   else if((fasterBallType == FasterBallType.full) && (typeOfShot == TypeOfShot.hook) ||
                           (fasterBallType == FasterBallType.full) && (typeOfShot == TypeOfShot.loftedDrive) || 
                           (fasterBallType == FasterBallType.full) && (typeOfShot == TypeOfShot.straightDrive) || 
                           (fasterBallType == FasterBallType.full) && (typeOfShot == TypeOfShot.legGlance)) {
                               run += 6;
                    }
                    else if((fasterBallType == FasterBallType.full) && (typeOfShot == TypeOfShot.sweep) ||
                             (fasterBallType == FasterBallType.full) && (typeOfShot == TypeOfShot.reveseSweep) ){
                                 run += 0;
                    } else if((fasterBallType == FasterBallType.full) && (typeOfShot == TypeOfShot.loftedDrive)) {
                        run += 1;
                    }
        }

            else if((fasterBallType == FasterBallType.good)){

                if((fasterBallType == FasterBallType.good) && (typeOfShot == TypeOfShot.pull) || 
                  (fasterBallType == FasterBallType.good) && (typeOfShot == TypeOfShot.upeerCut) ||
                  (fasterBallType == FasterBallType.good) && (typeOfShot == TypeOfShot.hook) || 
                  (fasterBallType == FasterBallType.good) && (typeOfShot == TypeOfShot.squareCut)){
                    run += 4;
                } 

                else if((fasterBallType == FasterBallType.good) && (typeOfShot == TypeOfShot.scoop) ||
                        (fasterBallType == FasterBallType.good) && (typeOfShot == TypeOfShot.legGlance) ||
                        (fasterBallType == FasterBallType.good) && (typeOfShot == TypeOfShot.sweep) ||
                        (fasterBallType == FasterBallType.good) && (typeOfShot == TypeOfShot.onDrive) ||
                        (fasterBallType == FasterBallType.good) && (typeOfShot == TypeOfShot.loftedDrive) ||
                        (fasterBallType == FasterBallType.good) && (typeOfShot == TypeOfShot.straightDrive) ||
                        (fasterBallType == FasterBallType.good) && (typeOfShot == TypeOfShot.offDrive) || 
                        (fasterBallType == FasterBallType.good) && (typeOfShot == TypeOfShot.coverDrive) ||
                        (fasterBallType == FasterBallType.good) && (typeOfShot == TypeOfShot.squareDrive) ||
                        (fasterBallType == FasterBallType.good) && (typeOfShot == TypeOfShot.reveseSweep))
                        {
                            run += 0;
                        }
                else if((fasterBallType == FasterBallType.good) && (typeOfShot == TypeOfShot.duck)) {
                    run += 1;
                }
            }

            else if((fasterBallType == FasterBallType.short)) {
                if((fasterBallType == FasterBallType.short) && (typeOfShot == TypeOfShot.duck)) {
                    run += 1;
                }
                else if((fasterBallType == FasterBallType.short) && (typeOfShot == TypeOfShot.scoop) ||
                   (fasterBallType == FasterBallType.short) && (typeOfShot == TypeOfShot.legGlance) ||
                   (fasterBallType == FasterBallType.short) && (typeOfShot == TypeOfShot.hook) || 
                   (fasterBallType == FasterBallType.short) && (typeOfShot == TypeOfShot.pull) ||
                   (fasterBallType == FasterBallType.short) && (typeOfShot == TypeOfShot.squareCut) 
                   ) {
                       run += 2;
                } 
                else if((fasterBallType == FasterBallType.short) && (typeOfShot == TypeOfShot.onDrive) ||
                        (fasterBallType == FasterBallType.short) && (typeOfShot == TypeOfShot.loftedDrive) || 
                        (fasterBallType == FasterBallType.short) && (typeOfShot == TypeOfShot.straightDrive) ||
                        (fasterBallType == FasterBallType.short) && (typeOfShot == TypeOfShot.offDrive) || 
                        (fasterBallType == FasterBallType.short) && (typeOfShot == TypeOfShot.coverDrive) || 
                        (fasterBallType == FasterBallType.short) && (typeOfShot == TypeOfShot.squareDrive) || 
                        (fasterBallType == FasterBallType.short) && (typeOfShot == TypeOfShot.reveseSweep) || 
                        (fasterBallType == FasterBallType.short) && (typeOfShot == TypeOfShot.upeerCut)) {
                            run += 0;
                        }
            }
            else if((fasterBallType == FasterBallType.bouncer)){
                if((fasterBallType == FasterBallType.bouncer) && (typeOfShot == TypeOfShot.pull) ||
                   (fasterBallType == FasterBallType.bouncer) && (typeOfShot == TypeOfShot.hook) ||
                   (fasterBallType == FasterBallType.bouncer) && (typeOfShot == TypeOfShot.scoop) ||
                   (fasterBallType == FasterBallType.bouncer) && (typeOfShot == TypeOfShot.legGlance)
                   ){
                       run+=6;
                   }
                else if((fasterBallType == FasterBallType.bouncer) && (typeOfShot == TypeOfShot.sweep) ||
                           (fasterBallType == FasterBallType.bouncer) && (typeOfShot == TypeOfShot.onDrive) ||
                           (fasterBallType == FasterBallType.bouncer) && (typeOfShot == TypeOfShot.loftedDrive) ||
                           (fasterBallType == FasterBallType.bouncer) && (typeOfShot == TypeOfShot.straightDrive) ||
                           (fasterBallType == FasterBallType.bouncer) && (typeOfShot == TypeOfShot.offDrive) ||
                           (fasterBallType == FasterBallType.bouncer) && (typeOfShot == TypeOfShot.coverDrive) ||
                           (fasterBallType == FasterBallType.bouncer) && (typeOfShot == TypeOfShot.squareDrive) ||
                           (fasterBallType == FasterBallType.bouncer) && (typeOfShot == TypeOfShot.squareCut) ||
                           (fasterBallType == FasterBallType.bouncer) && (typeOfShot == TypeOfShot.reveseSweep) || 
                           (fasterBallType == FasterBallType.bouncer) && (typeOfShot == TypeOfShot.upeerCut)
                           ){
                               run += 0;
                           }

                else if((fasterBallType == FasterBallType.bouncer) && (typeOfShot == TypeOfShot.duck)){
                       run += 1;
                   }
            }

            else if((fasterBallType == FasterBallType.fullTose)){
                if((fasterBallType == FasterBallType.fullTose) && (typeOfShot == TypeOfShot.hook) ||
                  (fasterBallType == FasterBallType.fullTose) && (typeOfShot == TypeOfShot.legGlance)||
                  (fasterBallType == FasterBallType.fullTose) && (typeOfShot == TypeOfShot.hook) ||
                  (fasterBallType == FasterBallType.fullTose) && (typeOfShot == TypeOfShot.pull) ||
                  (fasterBallType == FasterBallType.fullTose) && (typeOfShot == TypeOfShot.onDrive) || 
                  (fasterBallType == FasterBallType.fullTose) && (typeOfShot == TypeOfShot.loftedDrive)
                  )
                {
                    run += 6;
                }
                
                else if((fasterBallType == FasterBallType.fullTose) && (typeOfShot == TypeOfShot.straightDrive) || 
                        (fasterBallType == FasterBallType.fullTose) && (typeOfShot == TypeOfShot.offDrive) || 
                        (fasterBallType == FasterBallType.fullTose) && (typeOfShot == TypeOfShot.coverDrive) ||
                        (fasterBallType == FasterBallType.fullTose) && (typeOfShot == TypeOfShot.squareDrive) 
                        )
                {
                    run += 4;
                }
                
                else if((fasterBallType == FasterBallType.fullTose) && (typeOfShot == TypeOfShot.scoop) ||
                       (fasterBallType == FasterBallType.fullTose) && (typeOfShot == TypeOfShot.sweep) || 
                        (fasterBallType == FasterBallType.fullTose) && (typeOfShot == TypeOfShot.squareCut) ||
                        (fasterBallType == FasterBallType.fullTose) && (typeOfShot == TypeOfShot.reveseSweep) ||
                        (fasterBallType == FasterBallType.fullTose) && (typeOfShot == TypeOfShot.upeerCut)
                       )
                {
                    run += 0;
                }
            }
        }

        // THis is for spinner don't use it right now

        else if(typeOfBaller == TypeOfBaller.Spin){
         if((sppinerBallType == SppinerBallType.topSpin)) {
             if((sppinerBallType == SppinerBallType.topSpin) && (typeOfShot == TypeOfShot.sweep) ||
                (sppinerBallType == SppinerBallType.topSpin) && (typeOfShot == TypeOfShot.loftedDrive) ||
                (sppinerBallType == SppinerBallType.topSpin) && (typeOfShot == TypeOfShot.reveseSweep))
              { 
                  run += 6;
              }
             else if((sppinerBallType == SppinerBallType.topSpin) && (typeOfShot == TypeOfShot.scoop) || 
                    (sppinerBallType == SppinerBallType.topSpin) && (typeOfShot == TypeOfShot.legGlance) ||
                    (sppinerBallType == SppinerBallType.topSpin) && (typeOfShot == TypeOfShot.hook) || 
                    (sppinerBallType == SppinerBallType.topSpin) && (typeOfShot == TypeOfShot.pull) || 
                    (sppinerBallType == SppinerBallType.topSpin) && (typeOfShot == TypeOfShot.squareCut) || 
                    (sppinerBallType == SppinerBallType.topSpin) && (typeOfShot == TypeOfShot.upeerCut)
                    )
              {
                         run += 0;
              }
             else if((sppinerBallType == SppinerBallType.topSpin) && (typeOfShot == TypeOfShot.onDrive) || 
                    (sppinerBallType == SppinerBallType.topSpin) && (typeOfShot == TypeOfShot.straightDrive) ||
                    (sppinerBallType == SppinerBallType.topSpin) && (typeOfShot == TypeOfShot.offDrive) ||
                    (sppinerBallType == SppinerBallType.topSpin) && (typeOfShot == TypeOfShot.coverDrive) ||
                    (sppinerBallType == SppinerBallType.topSpin) && (typeOfShot == TypeOfShot.squareDrive)
                    )
              {
                  run += 4;
              }
              else if((sppinerBallType == SppinerBallType.topSpin) && (typeOfShot == TypeOfShot.duck)){
                  run += 1;
              }

              else if((sppinerBallType == SppinerBallType.Doosra)){
                  // Baki work from here 
                  if((sppinerBallType == SppinerBallType.Doosra) && (typeOfShot == TypeOfShot.sweep) ||
                     (sppinerBallType == SppinerBallType.Doosra) && (typeOfShot == TypeOfShot.reveseSweep))
                  {
                      run += 6;
                  }
                  else if((sppinerBallType == SppinerBallType.Doosra) && (typeOfShot == TypeOfShot.legGlance) ||
                         (sppinerBallType == SppinerBallType.Doosra) && (typeOfShot == TypeOfShot.loftedDrive) ||
                         (sppinerBallType == SppinerBallType.Doosra) && (typeOfShot == TypeOfShot.straightDrive))
                  {
                      run += 4;
                      }
                  else if((sppinerBallType == SppinerBallType.Doosra) && (typeOfShot == TypeOfShot.duck))
                  {
                      run += 1;
                      }
                  else if((sppinerBallType == SppinerBallType.Doosra) && (typeOfShot == TypeOfShot.scoop) ||
                        (sppinerBallType == SppinerBallType.Doosra) && (typeOfShot == TypeOfShot.hook) ||
                        (sppinerBallType == SppinerBallType.Doosra) && (typeOfShot == TypeOfShot.pull) ||
                        (sppinerBallType == SppinerBallType.Doosra) && (typeOfShot == TypeOfShot.onDrive) ||
                        (sppinerBallType == SppinerBallType.Doosra) && (typeOfShot == TypeOfShot.offDrive) ||
                        (sppinerBallType == SppinerBallType.Doosra) && (typeOfShot == TypeOfShot.coverDrive) ||
                        (sppinerBallType == SppinerBallType.Doosra) && (typeOfShot == TypeOfShot.squareDrive) || 
                        (sppinerBallType == SppinerBallType.Doosra) && (typeOfShot == TypeOfShot.squareCut) ||
                        (sppinerBallType == SppinerBallType.Doosra) && (typeOfShot == TypeOfShot.upeerCut))
                  {
                      run += 0;
                  }
                  }

                  else if((sppinerBallType == SppinerBallType.armBall)){
                      if((sppinerBallType == SppinerBallType.armBall) && (typeOfShot == TypeOfShot.sweep) ||
                        (sppinerBallType == SppinerBallType.armBall) && (typeOfShot == TypeOfShot.loftedDrive) ||
                        (sppinerBallType == SppinerBallType.armBall) && (typeOfShot == TypeOfShot.reveseSweep)){
                          run += 6;
                      } 
                      else if((sppinerBallType == SppinerBallType.armBall) && (typeOfShot == TypeOfShot.scoop) || 
                             (sppinerBallType == SppinerBallType.armBall) && (typeOfShot == TypeOfShot.onDrive) || 
                             (sppinerBallType == SppinerBallType.armBall) && (typeOfShot == TypeOfShot.straightDrive)) {
                          run += 4;
                      }
                      else if((sppinerBallType == SppinerBallType.armBall) && (typeOfShot == TypeOfShot.legGlance) ||
                              (sppinerBallType == SppinerBallType.armBall) && (typeOfShot == TypeOfShot.offDrive) ||
                              (sppinerBallType == SppinerBallType.armBall) && (typeOfShot == TypeOfShot.coverDrive) ||
                              (sppinerBallType == SppinerBallType.armBall) && (typeOfShot == TypeOfShot.squareDrive) ||
                              (sppinerBallType == SppinerBallType.armBall) && (typeOfShot == TypeOfShot.duck)) {
                          run += 1;
                      }
                      else if((sppinerBallType == SppinerBallType.armBall) && (typeOfShot == TypeOfShot.hook) ||
                              (sppinerBallType == SppinerBallType.armBall) && (typeOfShot == TypeOfShot.pull) || 
                              (sppinerBallType == SppinerBallType.armBall) && (typeOfShot == TypeOfShot.squareCut) ||
                              (sppinerBallType == SppinerBallType.armBall) && (typeOfShot == TypeOfShot.upeerCut)
                              ) {
                          run += 0;
                      }
                  }

                  else if((sppinerBallType == SppinerBallType.offBreak)){
                      if((sppinerBallType == SppinerBallType.offBreak) && (typeOfShot == TypeOfShot.sweep) ||
                      (sppinerBallType == SppinerBallType.offBreak) && (typeOfShot == TypeOfShot.loftedDrive) ||
                      (sppinerBallType == SppinerBallType.offBreak) && (typeOfShot == TypeOfShot.reveseSweep)){
                          run += 6;
                      } 
                      else if((sppinerBallType == SppinerBallType.offBreak) && (typeOfShot == TypeOfShot.straightDrive)
                             ){
                          run += 4;
                      }
                      else if((sppinerBallType == SppinerBallType.offBreak) && (typeOfShot == TypeOfShot.scoop) ||
                              (sppinerBallType == SppinerBallType.offBreak) && (typeOfShot == TypeOfShot.legGlance) ||
                              (sppinerBallType == SppinerBallType.offBreak) && (typeOfShot == TypeOfShot.onDrive) ||
                              (sppinerBallType == SppinerBallType.offBreak) && (typeOfShot == TypeOfShot.offDrive) ||
                              (sppinerBallType == SppinerBallType.offBreak) && (typeOfShot == TypeOfShot.coverDrive) ||
                              (sppinerBallType == SppinerBallType.offBreak) && (typeOfShot == TypeOfShot.squareDrive) ){
                          run += 1;
                      }
                      else if((sppinerBallType == SppinerBallType.offBreak) && (typeOfShot == TypeOfShot.hook) ||
                              (sppinerBallType == SppinerBallType.offBreak) && (typeOfShot == TypeOfShot.pull) ||
                              (sppinerBallType == SppinerBallType.offBreak) && (typeOfShot == TypeOfShot.squareCut) ||
                              (sppinerBallType == SppinerBallType.offBreak) && (typeOfShot == TypeOfShot.upeerCut)){
                          run += 0;
                      }
                  }
         }
         run;
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




//Over Count //Done
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
//5 OVER AND 2 BALL //Done
//TOTALRUN, COUNTTOTALLRUN
//Backend connect with frontend
//Networkid

