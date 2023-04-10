// // SPDX-License-Identifier: MIT
// pragma solidity ^0.8.9;

// contract tiddit{

//     enum ChooseField {Tie,BAT,BALL}
//     ChooseField public chooseField;

//     enum TypeOfBaller {Fast,Spin} 
//     TypeOfBaller public typeOfBaller;

//     enum FasterBallType {yorker,full,good,short,bouncer,fullTose} 
//     FasterBallType public fasterBallType;

//     enum SppinerBallType {topSpin, Doosra, armBall, offBreak}
//     SppinerBallType public sppinerBallType;

//     // yorker => Dab,Scoop,Drive,Reverse Sweep,
//     enum && (typeOfShot == TypeOfShot.straightDrive) {
//                     scoop,
//                     legGlance,
//                     sweep,
//                     hook,
//                     pull,
//                     onDrive,
//                     loftedDrive,
//                     straightDrive,
//                     offDrive,
//                     coverDrive,
//                     squareDrive,
//                     squareCut,
//                     duck,
//                     reveseSweep,
//                     upeerCut
//                     }

//     && (typeOfShot == TypeOfShot.straightDrive) && (typeOfShot == TypeOfShot.straightDrive);

//     //This is for generating the random number
//     uint public randNumber = uint(keccak256(abi.encodePacked(block.timestamp,msg.sender))) % 2;
//     bool update;
//     // Function to check user won or not
//     function tossChoss(uint256 number) public returns(bool) {
//         if(number == randNumber){
//             update = true;
//             return true;
//         }
//         update = false;
//         return false;
//     }

//     //Edit bool , if-else
//     function fieldChoss(uint _value) public {
//             require(uint(ChooseField.BALL) == _value);
//             chooseField = ChooseField(_value);
//     }

//     // uint256 winAmount = 1 ETH;

//     //This is for number of over
//     uint256 public T5 = 5;
//     uint256 public T10 = 10;
//     uint256 public T20 = 20;
//     function selectAnOver(uint256 numOver) view  public returns(string memory){
//         if(T5 == numOver) {
//             return "You have selected T5";
//         }
//         else if (T10 == numOver) {
//             return "You have selected T10";
//         }
//         else if(T20 == numOver){
//             return "You have selected T20";
//         }
//         else {
//             return "Wrong input, Please Select T5,T10,T20 out any one";
//         }
//     }

    


//     //Computer side random number generator
//     //uint public randNumber = uint(keccak256(abi.encodePacked(block.timestamp,msg.sender))) % 2;

//     uint256 public  typeComputerBalling = uint(keccak256(abi.encodePacked(block.timestamp,msg.sender))) % 2;
    
//     uint256 public fastComputer = uint(keccak256(abi.encodePacked(block.timestamp,msg.sender))) % 6;

//     uint256 public spinComputer = uint(keccak256(abi.encodePacked(block.timestamp,msg.sender))) % 4;
    
//     uint256 run = 0;

//     function computerSideGame() public view returns(uint256){
        
//         //  0 ==>> Fast, 1 ==>> spinner 
//         if(typeComputerBalling == 0) {
//             if(fastComputer == 0){
//                 if((fasterBallType == FasterBallType.yorker)) {
//                 if((fasterBallType == FasterBallType.yorker) && (typeOfShot == TypeOfShot.straightDrive)) || (typeOfShot == TypeOfShot.straightDrive).legGlance)
//                  || (fasterBallType == FasterBallType.yorker) == && (typeOfShot == TypeOfShot.straightDrive).scoop){
//                  run += 4;
//             } 
//              else if((fasterBallType == FasterBallType.yorker) == && (typeOfShot == TypeOfShot.straightDrive).straightDrive || 
//              (fasterBallType == FasterBallType.yorker) == && (typeOfShot == TypeOfShot.straightDrive).loftedDrive) {
//                  run += 6;
//             }
            
//             else if((fasterBallType == FasterBallType.yorker) == && (typeOfShot == TypeOfShot.straightDrive).pull ||
//                     (fasterBallType == FasterBallType.yorker) == && (typeOfShot == TypeOfShot.straightDrive).hook || 
//                     (fasterBallType == FasterBallType.yorker) == && (typeOfShot == TypeOfShot.straightDrive).upeerCut ||
//                     (fasterBallType == FasterBallType.yorker) == && (typeOfShot == TypeOfShot.straightDrive).squareCut ||
//                     (fasterBallType == FasterBallType.yorker) == && (typeOfShot == TypeOfShot.straightDrive).squareDrive ||
//                     (fasterBallType == FasterBallType.yorker) == && (typeOfShot == TypeOfShot.straightDrive).coverDrive ||
//                     (fasterBallType == FasterBallType.yorker) == && (typeOfShot == TypeOfShot.straightDrive).offDrive){
//                         run += 0;
//                 } 
            
//             else if((fasterBallType == FasterBallType.yorker) == && (typeOfShot == TypeOfShot.straightDrive).sweep || 
//                     (fasterBallType == FasterBallType.yorker) == && (typeOfShot == TypeOfShot.straightDrive).reveseSweep ||
//                     (fasterBallType == FasterBallType.yorker) == && (typeOfShot == TypeOfShot.straightDrive).duck) {
//                         run += 1;
//                     }
//             }
//             }

//         else if(fastComputer == 1){
//             if(fasterBallType.full){
//                 if(fasterBallType.full == && (typeOfShot == TypeOfShot.straightDrive).offDrive || 
//                    fasterBallType.full == && (typeOfShot == TypeOfShot.straightDrive).onDrive || 
//                    fasterBallType.full == && (typeOfShot == TypeOfShot.straightDrive).squareDrive ||
//                    fasterBallType.full == && (typeOfShot == TypeOfShot.straightDrive).squareCut || 
//                    fasterBallType.full == && (typeOfShot == TypeOfShot.straightDrive).pull ||
//                    fasterBallType.full == && (typeOfShot == TypeOfShot.straightDrive).hook){
//                        run += 4;
//                    } 
//                    else if(fasterBallType.full == && (typeOfShot == TypeOfShot.straightDrive).hook ||
//                            fasterBallType.full == && (typeOfShot == TypeOfShot.straightDrive).loftedDrive || 
//                            fasterBallType.full == && (typeOfShot == TypeOfShot.straightDrive).straightDrive || 
//                            fasterBallType.full && ( && (typeOfShot == TypeOfShot.straightDrive)== && (typeOfShot == TypeOfShot.straightDrive).legGlance)) {
//                                run += 6;
//                     }
//                     else if(fasterBallType.full == && (typeOfShot == TypeOfShot.straightDrive).sweep ||
//                              fasterBallType.full == && (typeOfShot == TypeOfShot.straightDrive).reveseSweep ){
//                                  run += 0;
//                     } else if(fasterBallType.full == && (typeOfShot == TypeOfShot.straightDrive).loftedDrive) {
//                         run += 1;
//                     }
//             }
//         else if(fastComputer == 2){
//             if(fasterBallType.good){

//                 if(fasterBallType.good == && (typeOfShot == TypeOfShot.straightDrive).pull || 
//                   fasterBallType.good == && (typeOfShot == TypeOfShot.straightDrive).upeerCut ||
//                   fasterBallType.good == && (typeOfShot == TypeOfShot.straightDrive).hook || 
//                   fasterBallType.good == && (typeOfShot == TypeOfShot.straightDrive).squareCut){
//                     run += 4;
//                 } 

//                 else if(fasterBallType.good == && (typeOfShot == TypeOfShot.straightDrive).scoop ||
//                         fasterBallType.good && ( && (typeOfShot == TypeOfShot.straightDrive)== && (typeOfShot == TypeOfShot.straightDrive).legGlance) ||
//                         fasterBallType.good == && (typeOfShot == TypeOfShot.straightDrive).sweep ||
//                         fasterBallType.good == && (typeOfShot == TypeOfShot.straightDrive).onDrive ||
//                         fasterBallType.good == && (typeOfShot == TypeOfShot.straightDrive).loftedDrive ||
//                         fasterBallType.good == && (typeOfShot == TypeOfShot.straightDrive).straightDrive ||
//                         fasterBallType.good == && (typeOfShot == TypeOfShot.straightDrive).offDrive || 
//                         fasterBallType.good == && (typeOfShot == TypeOfShot.straightDrive).coverDrive ||
//                         fasterBallType.good == && (typeOfShot == TypeOfShot.straightDrive).squareDrive ||
//                         fasterBallType.good == && (typeOfShot == TypeOfShot.straightDrive).reveseSweep)
//                         {
//                             run += 0;
//                         }
//                 else if(fasterBallType.good == && (typeOfShot == TypeOfShot.straightDrive).duck) {
//                     run += 1;
//                 }
//         }
//         }

//         else if(fastComputer == 3){
//             if(fasterBallType.short) {
//                 if(fasterBallType.short == && (typeOfShot == TypeOfShot.straightDrive).duck) {
//                     run += 1;
//                 }
//                 else if(fasterBallType.short == && (typeOfShot == TypeOfShot.straightDrive).scoop ||
//                    fasterBallType.short && ( && (typeOfShot == TypeOfShot.straightDrive)== && (typeOfShot == TypeOfShot.straightDrive).legGlance) ||
//                    fasterBallType.short == && (typeOfShot == TypeOfShot.straightDrive).hook || 
//                    fasterBallType.short == && (typeOfShot == TypeOfShot.straightDrive).pull ||
//                    fasterBallType.short == && (typeOfShot == TypeOfShot.straightDrive).squareCut 
//                    ) {
//                        run += 2;
//                 } 
//                 else if(fasterBallType.short == && (typeOfShot == TypeOfShot.straightDrive).onDrive ||
//                         fasterBallType.short == && (typeOfShot == TypeOfShot.straightDrive).loftedDrive || 
//                         fasterBallType.short == && (typeOfShot == TypeOfShot.straightDrive).straightDrive ||
//                         fasterBallType.short == && (typeOfShot == TypeOfShot.straightDrive).offDrive || 
//                         fasterBallType.short == && (typeOfShot == TypeOfShot.straightDrive).coverDrive || 
//                         fasterBallType.short == && (typeOfShot == TypeOfShot.straightDrive).squareDrive || 
//                         fasterBallType.short == && (typeOfShot == TypeOfShot.straightDrive).reveseSweep || 
//                         fasterBallType.short == && (typeOfShot == TypeOfShot.straightDrive).upeerCut) {
//                             run += 0;
//                         }
//             }
//         }
//         else if(fastComputer == 4){
//             if(fasterBallType.bouncer){
//                 if(fasterBallType.bouncer == && (typeOfShot == TypeOfShot.straightDrive).pull ||
//                    fasterBallType.bouncer == && (typeOfShot == TypeOfShot.straightDrive).hook ||
//                    fasterBallType.bouncer == && (typeOfShot == TypeOfShot.straightDrive).scoop ||
//                    fasterBallType.bouncer && ( && (typeOfShot == TypeOfShot.straightDrive)== && (typeOfShot == TypeOfShot.straightDrive).legGlance)
//                    ){
//                        run+=6;
//                    }
//                 else if(fasterBallType.bouncer == && (typeOfShot == TypeOfShot.straightDrive).sweep ||
//                            fasterBallType.bouncer == && (typeOfShot == TypeOfShot.straightDrive).onDrive ||
//                            fasterBallType.bouncer == && (typeOfShot == TypeOfShot.straightDrive).loftedDrive ||
//                            fasterBallType.bouncer == && (typeOfShot == TypeOfShot.straightDrive).straightDrive ||
//                            fasterBallType.bouncer == && (typeOfShot == TypeOfShot.straightDrive).offDrive ||
//                            fasterBallType.bouncer == && (typeOfShot == TypeOfShot.straightDrive).coverDrive ||
//                            fasterBallType.bouncer == && (typeOfShot == TypeOfShot.straightDrive).squareDrive ||
//                            fasterBallType.bouncer == && (typeOfShot == TypeOfShot.straightDrive).squareCut ||
//                            fasterBallType.bouncer == && (typeOfShot == TypeOfShot.straightDrive).reveseSweep || 
//                            fasterBallType.bouncer == && (typeOfShot == TypeOfShot.straightDrive).upeerCut
//                            ){
//                                run += 0;
//                            }

//                 else if(fasterBallType.bouncer == && (typeOfShot == TypeOfShot.straightDrive).duck){
//                        run += 1;
//                    }
//             }
//         }
//         else if(fasterBallType == 5){
//             if(fasterBallType.fullTose){
//                 if(fasterBallType.fullTose == && (typeOfShot == TypeOfShot.straightDrive).hook ||
//                   fasterBallType.fullTose && ( && (typeOfShot == TypeOfShot.straightDrive)== && (typeOfShot == TypeOfShot.straightDrive).legGlance)||
//                   fasterBallType.fullTose == && (typeOfShot == TypeOfShot.straightDrive).hook ||
//                   fasterBallType.fullTose == && (typeOfShot == TypeOfShot.straightDrive).pull ||
//                   fasterBallType.fullTose == && (typeOfShot == TypeOfShot.straightDrive).onDrive || 
//                   fasterBallType.fullTose == && (typeOfShot == TypeOfShot.straightDrive).loftedDrive
//                   )
//                 {
//                     run += 6;
//                 }
                
//                 else if(fasterBallType.fullTose == && (typeOfShot == TypeOfShot.straightDrive).straightDrive || 
//                         fasterBallType.fullTose == && (typeOfShot == TypeOfShot.straightDrive).offDrive || 
//                         fasterBallType.fullTose == && (typeOfShot == TypeOfShot.straightDrive).coverDrive ||
//                         fasterBallType.fullTose == && (typeOfShot == TypeOfShot.straightDrive).squareDrive 
//                         )
//                 {
//                     run += 4;
//                 }
                
//                 else if(fasterBallType.fullTose == && (typeOfShot == TypeOfShot.straightDrive).scoop ||
//                        fasterBallType.fullTose == && (typeOfShot == TypeOfShot.straightDrive).sweep || 
//                         fasterBallType.fullTose == && (typeOfShot == TypeOfShot.straightDrive).squareCut ||
//                         fasterBallType.fullTose == && (typeOfShot == TypeOfShot.straightDrive).reveseSweep ||
//                         fasterBallType.fullTose == && (typeOfShot == TypeOfShot.straightDrive).upeerCut
//                        )
//                 {
//                     run += 0;
//                 }
//             }
//         }
//         }


//         //This is for spin type of an bolwing  
//         else if(typeComputerBalling == 1){
//             if(spinComputer == 0){
//             if(sppinerBallType.topSpin) {
//              if(sppinerBallType.topSpin == && (typeOfShot == TypeOfShot.straightDrive).sweep ||
//                 sppinerBallType.topSpin == && (typeOfShot == TypeOfShot.straightDrive).loftedDrive ||
//                 sppinerBallType.topSpin == && (typeOfShot == TypeOfShot.straightDrive).reveseSweep)
//               { 
//                   run += 6;
//               }
//              else if(sppinerBallType.topSpin == && (typeOfShot == TypeOfShot.straightDrive).scoop || 
//                     sppinerBallType.topSpin && ( && (typeOfShot == TypeOfShot.straightDrive)== && (typeOfShot == TypeOfShot.straightDrive).legGlance) ||
//                     sppinerBallType.topSpin == && (typeOfShot == TypeOfShot.straightDrive).hook || 
//                     sppinerBallType.topSpin == && (typeOfShot == TypeOfShot.straightDrive).pull || 
//                     sppinerBallType.topSpin == && (typeOfShot == TypeOfShot.straightDrive).squareCut || 
//                     sppinerBallType.topSpin == && (typeOfShot == TypeOfShot.straightDrive).upeerCut
//                     )
//               {
//                          run += 0;
//               }
//              else if(sppinerBallType.topSpin == && (typeOfShot == TypeOfShot.straightDrive).onDrive || 
//                     sppinerBallType.topSpin == && (typeOfShot == TypeOfShot.straightDrive).straightDrive ||
//                     sppinerBallType.topSpin == && (typeOfShot == TypeOfShot.straightDrive).offDrive ||
//                     sppinerBallType.topSpin == && (typeOfShot == TypeOfShot.straightDrive).coverDrive ||
//                     sppinerBallType.topSpin == && (typeOfShot == TypeOfShot.straightDrive).squareDrive
//                     )
//               {
//                   run += 4;
//               }
//               else if(sppinerBallType.topSpin == && (typeOfShot == TypeOfShot.straightDrive).duck){
//                   run += 1;
//               }
//             }
//             }
//         }

//             else if(spinComputer == 1){
//                 if(sppinerBallType.Doosra){
//                 if(sppinerBallType.Doosra == && (typeOfShot == TypeOfShot.straightDrive).sweep ||
//                      sppinerBallType.Doosra == && (typeOfShot == TypeOfShot.straightDrive).reveseSweep)
//                   {
//                       run += 6;
//                   }
//                   else if(sppinerBallType.Doosra && ( && (typeOfShot == TypeOfShot.straightDrive)== && (typeOfShot == TypeOfShot.straightDrive).legGlance) ||
//                          sppinerBallType.Doosra == && (typeOfShot == TypeOfShot.straightDrive).loftedDrive ||
//                          sppinerBallType.Doosra == && (typeOfShot == TypeOfShot.straightDrive).straightDrive)
//                   {
//                       run += 4;
//                       }
//                   else if(sppinerBallType.Doosra == && (typeOfShot == TypeOfShot.straightDrive).duck)
//                   {
//                       run += 1;
//                       }
//                   else if(sppinerBallType.Doosra == && (typeOfShot == TypeOfShot.straightDrive).scoop ||
//                         sppinerBallType.Doosra == && (typeOfShot == TypeOfShot.straightDrive).hook ||
//                         sppinerBallType.Doosra == && (typeOfShot == TypeOfShot.straightDrive).pull ||
//                         sppinerBallType.Doosra == && (typeOfShot == TypeOfShot.straightDrive).onDrive ||
//                         sppinerBallType.Doosra == && (typeOfShot == TypeOfShot.straightDrive).offDrive ||
//                         sppinerBallType.Doosra == && (typeOfShot == TypeOfShot.straightDrive).coverDrive ||
//                         sppinerBallType.Doosra == && (typeOfShot == TypeOfShot.straightDrive).squareDrive || 
//                         sppinerBallType.Doosra == && (typeOfShot == TypeOfShot.straightDrive).squareCut ||
//                         sppinerBallType.Doosra == && (typeOfShot == TypeOfShot.straightDrive).upeerCut)
//                   {
//                       run += 0;
//                   }
//             }
//             }

//             else if(spinComputer == 2){
//                 if(SppinerBallType.armBall){
//                     if(sppinerBallType.armBall == && (typeOfShot == TypeOfShot.straightDrive).sweep ||
//                         sppinerBallType.armBall == && (typeOfShot == TypeOfShot.straightDrive).loftedDrive ||
//                         sppinerBallType.armBall == && (typeOfShot == TypeOfShot.straightDrive).reveseSweep){
//                           run += 6;
//                       } 
//                       else if(sppinerBallType.armBall == && (typeOfShot == TypeOfShot.straightDrive).scoop || 
//                              sppinerBallType.armBall == && (typeOfShot == TypeOfShot.straightDrive).onDrive || 
//                              sppinerBallType.armBall == && (typeOfShot == TypeOfShot.straightDrive).straightDrive) {
//                           run += 4;
//                       }
//                       else if(sppinerBallType.armBall && ( && (typeOfShot == TypeOfShot.straightDrive)== && (typeOfShot == TypeOfShot.straightDrive).legGlance) ||
//                               sppinerBallType.armBall == && (typeOfShot == TypeOfShot.straightDrive).offDrive ||
//                               sppinerBallType.armBall == && (typeOfShot == TypeOfShot.straightDrive).coverDrive ||
//                               sppinerBallType.armBall == && (typeOfShot == TypeOfShot.straightDrive).squareDrive ||
//                               sppinerBallType.armBall == && (typeOfShot == TypeOfShot.straightDrive).duck) {
//                           run += 1;
//                       }
//                       else if(sppinerBallType.armBall == && (typeOfShot == TypeOfShot.straightDrive).hook ||
//                               sppinerBallType.armBall == && (typeOfShot == TypeOfShot.straightDrive).pull || 
//                               sppinerBallType.armBall == && (typeOfShot == TypeOfShot.straightDrive).squareCut ||
//                               sppinerBallType.armBall == && (typeOfShot == TypeOfShot.straightDrive).upeerCut
//                               ) {
//                           run += 0;
//                       }
//                 }
//             }
//             else if(spinComputer == 3){
//                 if(sppinerBallType.offBreak){
//                     if(sppinerBallType.offBreak == && (typeOfShot == TypeOfShot.straightDrive).sweep ||
//                       sppinerBallType.offBreak == && (typeOfShot == TypeOfShot.straightDrive).loftedDrive ||
//                       sppinerBallType.offBreak == && (typeOfShot == TypeOfShot.straightDrive).reveseSweep){
//                           run += 6;
//                       } 
//                       else if(sppinerBallType.offBreak == && (typeOfShot == TypeOfShot.straightDrive).straightDrive 
//                              ){
//                           run += 4;
//                       }
//                       else if(sppinerBallType.offBreak == && (typeOfShot == TypeOfShot.straightDrive).scoop ||
//                               sppinerBallType.offBreak && ( && (typeOfShot == TypeOfShot.straightDrive)== && (typeOfShot == TypeOfShot.straightDrive).legGlance) ||
//                               sppinerBallType.offBreak == && (typeOfShot == TypeOfShot.straightDrive).onDrive ||
//                               sppinerBallType.offBreak == && (typeOfShot == TypeOfShot.straightDrive).offDrive ||
//                               sppinerBallType.offBreak == && (typeOfShot == TypeOfShot.straightDrive).coverDrive ||
//                               sppinerBallType.offBreak == && (typeOfShot == TypeOfShot.straightDrive).squareDrive ){
//                           run += 1;
//                       }
//                       else if(sppinerBallType.offBreak == && (typeOfShot == TypeOfShot.straightDrive).hook ||
//                               sppinerBallType.offBreak == && (typeOfShot == TypeOfShot.straightDrive).pull ||
//                               sppinerBallType.offBreak == && (typeOfShot == TypeOfShot.straightDrive).squareCut ||
//                               sppinerBallType.offBreak == && (typeOfShot == TypeOfShot.straightDrive).upeerCut){
//                           run += 0;
//                       }
//                 }
//             }
//             }
//             return run;
//         }

//     //Bool,uint insted bool 
//     function runForBall() view public {
//         if(typeOfBaller.Faste){
//             if((fasterBallType == FasterBallType.yorker)) {
//               if((fasterBallType == FasterBallType.yorker) && ( && (typeOfShot == TypeOfShot.straightDrive)== && (typeOfShot == TypeOfShot.straightDrive).legGlance)
//                 || (fasterBallType == FasterBallType.yorker) == && (typeOfShot == TypeOfShot.straightDrive).scoop){
//                 run += 4;
//             } 
//              else if((fasterBallType == FasterBallType.yorker) == && (typeOfShot == TypeOfShot.straightDrive).straightDrive || 
//              (fasterBallType == FasterBallType.yorker) == && (typeOfShot == TypeOfShot.straightDrive).loftedDrive) {
//                  run += 6;
//             }
            
//             else if((fasterBallType == FasterBallType.yorker) == && (typeOfShot == TypeOfShot.straightDrive).pull ||
//                     (fasterBallType == FasterBallType.yorker) == && (typeOfShot == TypeOfShot.straightDrive).hook || 
//                     (fasterBallType == FasterBallType.yorker) == && (typeOfShot == TypeOfShot.straightDrive).upeerCut ||
//                     (fasterBallType == FasterBallType.yorker) == && (typeOfShot == TypeOfShot.straightDrive).squareCut ||
//                     (fasterBallType == FasterBallType.yorker) == && (typeOfShot == TypeOfShot.straightDrive).squareDrive ||
//                     (fasterBallType == FasterBallType.yorker) == && (typeOfShot == TypeOfShot.straightDrive).coverDrive ||
//                     (fasterBallType == FasterBallType.yorker) == && (typeOfShot == TypeOfShot.straightDrive).offDrive){
//                         run += 0;
//                 } 
            
//             else if((fasterBallType == FasterBallType.yorker) == && (typeOfShot == TypeOfShot.straightDrive).sweep || 
//                     (fasterBallType == FasterBallType.yorker) == && (typeOfShot == TypeOfShot.straightDrive).reveseSweep ||
//                     (fasterBallType == FasterBallType.yorker) == && (typeOfShot == TypeOfShot.straightDrive).duck) {
//                         run += 1;
//                     }
//             }

//             else if(fasterBallType.full) {
//                 if(fasterBallType.full == && (typeOfShot == TypeOfShot.straightDrive).offDrive || 
//                    fasterBallType.full == && (typeOfShot == TypeOfShot.straightDrive).onDrive || 
//                    fasterBallType.full == && (typeOfShot == TypeOfShot.straightDrive).squareDrive ||
//                    fasterBallType.full == && (typeOfShot == TypeOfShot.straightDrive).squareCut || 
//                    fasterBallType.full == && (typeOfShot == TypeOfShot.straightDrive).pull ||
//                    fasterBallType.full == && (typeOfShot == TypeOfShot.straightDrive).hook){
//                        run += 4;
//                    } 
//                    else if(fasterBallType.full == && (typeOfShot == TypeOfShot.straightDrive).hook ||
//                            fasterBallType.full == && (typeOfShot == TypeOfShot.straightDrive).loftedDrive || 
//                            fasterBallType.full == && (typeOfShot == TypeOfShot.straightDrive).straightDrive || 
//                            fasterBallType.full && ( && (typeOfShot == TypeOfShot.straightDrive)== && (typeOfShot == TypeOfShot.straightDrive).legGlance)) {
//                                run += 6;
//                     }
//                     else if(fasterBallType.full == && (typeOfShot == TypeOfShot.straightDrive).sweep ||
//                              fasterBallType.full == && (typeOfShot == TypeOfShot.straightDrive).reveseSweep ){
//                                  run += 0;
//                     } else if(fasterBallType.full == && (typeOfShot == TypeOfShot.straightDrive).loftedDrive) {
//                         run += 1;
//                     }
//         }

//             else if(fasterBallType.good){

//                 if(fasterBallType.good == && (typeOfShot == TypeOfShot.straightDrive).pull || 
//                   fasterBallType.good == && (typeOfShot == TypeOfShot.straightDrive).upeerCut ||
//                   fasterBallType.good == && (typeOfShot == TypeOfShot.straightDrive).hook || 
//                   fasterBallType.good == && (typeOfShot == TypeOfShot.straightDrive).squareCut){
//                     run += 4;
//                 } 

//                 else if(fasterBallType.good == && (typeOfShot == TypeOfShot.straightDrive).scoop ||
//                         fasterBallType.good && ( && (typeOfShot == TypeOfShot.straightDrive)== && (typeOfShot == TypeOfShot.straightDrive).legGlance) ||
//                         fasterBallType.good == && (typeOfShot == TypeOfShot.straightDrive).sweep ||
//                         fasterBallType.good == && (typeOfShot == TypeOfShot.straightDrive).onDrive ||
//                         fasterBallType.good == && (typeOfShot == TypeOfShot.straightDrive).loftedDrive ||
//                         fasterBallType.good == && (typeOfShot == TypeOfShot.straightDrive).straightDrive ||
//                         fasterBallType.good == && (typeOfShot == TypeOfShot.straightDrive).offDrive || 
//                         fasterBallType.good == && (typeOfShot == TypeOfShot.straightDrive).coverDrive ||
//                         fasterBallType.good == && (typeOfShot == TypeOfShot.straightDrive).squareDrive ||
//                         fasterBallType.good == && (typeOfShot == TypeOfShot.straightDrive).reveseSweep)
//                         {
//                             run += 0;
//                         }
//                 else if(fasterBallType.good == && (typeOfShot == TypeOfShot.straightDrive).duck) {
//                     run += 1;
//                 }
//             }

//             else if(fasterBallType.short) {
//                 if(fasterBallType.short == && (typeOfShot == TypeOfShot.straightDrive).duck) {
//                     run += 1;
//                 }
//                 else if(fasterBallType.short == && (typeOfShot == TypeOfShot.straightDrive).scoop ||
//                    fasterBallType.short && ( && (typeOfShot == TypeOfShot.straightDrive)== && (typeOfShot == TypeOfShot.straightDrive).legGlance) ||
//                    fasterBallType.short == && (typeOfShot == TypeOfShot.straightDrive).hook || 
//                    fasterBallType.short == && (typeOfShot == TypeOfShot.straightDrive).pull ||
//                    fasterBallType.short == && (typeOfShot == TypeOfShot.straightDrive).squareCut 
//                    ) {
//                        run += 2;
//                 } 
//                 else if(fasterBallType.short == && (typeOfShot == TypeOfShot.straightDrive).onDrive ||
//                         fasterBallType.short == && (typeOfShot == TypeOfShot.straightDrive).loftedDrive || 
//                         fasterBallType.short == && (typeOfShot == TypeOfShot.straightDrive).straightDrive ||
//                         fasterBallType.short == && (typeOfShot == TypeOfShot.straightDrive).offDrive || 
//                         fasterBallType.short == && (typeOfShot == TypeOfShot.straightDrive).coverDrive || 
//                         fasterBallType.short == && (typeOfShot == TypeOfShot.straightDrive).squareDrive || 
//                         fasterBallType.short == && (typeOfShot == TypeOfShot.straightDrive).reveseSweep || 
//                         fasterBallType.short == && (typeOfShot == TypeOfShot.straightDrive).upeerCut) {
//                             run += 0;
//                         }
//             }
//             else if(fasterBallType.bouncer){
//                 if(fasterBallType.bouncer == && (typeOfShot == TypeOfShot.straightDrive).pull ||
//                    fasterBallType.bouncer == && (typeOfShot == TypeOfShot.straightDrive).hook ||
//                    fasterBallType.bouncer == && (typeOfShot == TypeOfShot.straightDrive).scoop ||
//                    fasterBallType.bouncer && ( && (typeOfShot == TypeOfShot.straightDrive)== && (typeOfShot == TypeOfShot.straightDrive).legGlance)
//                    ){
//                        run+=6;
//                    }
//                 else if(fasterBallType.bouncer == && (typeOfShot == TypeOfShot.straightDrive).sweep ||
//                            fasterBallType.bouncer == && (typeOfShot == TypeOfShot.straightDrive).onDrive ||
//                            fasterBallType.bouncer == && (typeOfShot == TypeOfShot.straightDrive).loftedDrive ||
//                            fasterBallType.bouncer == && (typeOfShot == TypeOfShot.straightDrive).straightDrive ||
//                            fasterBallType.bouncer == && (typeOfShot == TypeOfShot.straightDrive).offDrive ||
//                            fasterBallType.bouncer == && (typeOfShot == TypeOfShot.straightDrive).coverDrive ||
//                            fasterBallType.bouncer == && (typeOfShot == TypeOfShot.straightDrive).squareDrive ||
//                            fasterBallType.bouncer == && (typeOfShot == TypeOfShot.straightDrive).squareCut ||
//                            fasterBallType.bouncer == && (typeOfShot == TypeOfShot.straightDrive).reveseSweep || 
//                            fasterBallType.bouncer == && (typeOfShot == TypeOfShot.straightDrive).upeerCut
//                            ){
//                                run += 0;
//                            }

//                 else if(fasterBallType.bouncer == && (typeOfShot == TypeOfShot.straightDrive).duck){
//                        run += 1;
//                    }
//             }

//             else if(fasterBallType.fullTose){
//                 if(fasterBallType.fullTose == && (typeOfShot == TypeOfShot.straightDrive).hook ||
//                   fasterBallType.fullTose && ( && (typeOfShot == TypeOfShot.straightDrive)== && (typeOfShot == TypeOfShot.straightDrive).legGlance)||
//                   fasterBallType.fullTose == && (typeOfShot == TypeOfShot.straightDrive).hook ||
//                   fasterBallType.fullTose == && (typeOfShot == TypeOfShot.straightDrive).pull ||
//                   fasterBallType.fullTose == && (typeOfShot == TypeOfShot.straightDrive).onDrive || 
//                   fasterBallType.fullTose == && (typeOfShot == TypeOfShot.straightDrive).loftedDrive
//                   )
//                 {
//                     run += 6;
//                 }
                
//                 else if(fasterBallType.fullTose == && (typeOfShot == TypeOfShot.straightDrive).straightDrive || 
//                         fasterBallType.fullTose == && (typeOfShot == TypeOfShot.straightDrive).offDrive || 
//                         fasterBallType.fullTose == && (typeOfShot == TypeOfShot.straightDrive).coverDrive ||
//                         fasterBallType.fullTose == && (typeOfShot == TypeOfShot.straightDrive).squareDrive 
//                         )
//                 {
//                     run += 4;
//                 }
                
//                 else if(fasterBallType.fullTose == && (typeOfShot == TypeOfShot.straightDrive).scoop ||
//                        fasterBallType.fullTose == && (typeOfShot == TypeOfShot.straightDrive).sweep || 
//                         fasterBallType.fullTose == && (typeOfShot == TypeOfShot.straightDrive).squareCut ||
//                         fasterBallType.fullTose == && (typeOfShot == TypeOfShot.straightDrive).reveseSweep ||
//                         fasterBallType.fullTose == && (typeOfShot == TypeOfShot.straightDrive).upeerCut
//                        )
//                 {
//                     run += 0;
//                 }
//             }
//         }

//         // THis is for spinner don't use it right now

//         else if(typeOfBaller.Spin){
//          if(sppinerBallType.topSpin) {
//              if(sppinerBallType.topSpin == && (typeOfShot == TypeOfShot.straightDrive).sweep ||
//                 sppinerBallType.topSpin == && (typeOfShot == TypeOfShot.straightDrive).loftedDrive ||
//                 sppinerBallType.topSpin == && (typeOfShot == TypeOfShot.straightDrive).reveseSweep)
//               { 
//                   run += 6;
//               }
//              else if(sppinerBallType.topSpin == && (typeOfShot == TypeOfShot.straightDrive).scoop || 
//                     sppinerBallType.topSpin && ( && (typeOfShot == TypeOfShot.straightDrive)== && (typeOfShot == TypeOfShot.straightDrive).legGlance) ||
//                     sppinerBallType.topSpin == && (typeOfShot == TypeOfShot.straightDrive).hook || 
//                     sppinerBallType.topSpin == && (typeOfShot == TypeOfShot.straightDrive).pull || 
//                     sppinerBallType.topSpin == && (typeOfShot == TypeOfShot.straightDrive).squareCut || 
//                     sppinerBallType.topSpin == && (typeOfShot == TypeOfShot.straightDrive).upeerCut
//                     )
//               {
//                          run += 0;
//               }
//              else if(sppinerBallType.topSpin == && (typeOfShot == TypeOfShot.straightDrive).onDrive || 
//                     sppinerBallType.topSpin == && (typeOfShot == TypeOfShot.straightDrive).straightDrive ||
//                     sppinerBallType.topSpin == && (typeOfShot == TypeOfShot.straightDrive).offDrive ||
//                     sppinerBallType.topSpin == && (typeOfShot == TypeOfShot.straightDrive).coverDrive ||
//                     sppinerBallType.topSpin == && (typeOfShot == TypeOfShot.straightDrive).squareDrive
//                     )
//               {
//                   run += 4;
//               }
//               else if(sppinerBallType.topSpin == && (typeOfShot == TypeOfShot.straightDrive).duck){
//                   run += 1;
//               }

//               else if(sppinerBallType.Doosra){
//                   // Baki work from here 
//                   if(sppinerBallType.Doosra == && (typeOfShot == TypeOfShot.straightDrive).sweep ||
//                      sppinerBallType.Doosra == && (typeOfShot == TypeOfShot.straightDrive).reveseSweep)
//                   {
//                       run += 6;
//                   }
//                   else if(sppinerBallType.Doosra && ( && (typeOfShot == TypeOfShot.straightDrive)== && (typeOfShot == TypeOfShot.straightDrive).legGlance) ||
//                          sppinerBallType.Doosra == && (typeOfShot == TypeOfShot.straightDrive).loftedDrive ||
//                          sppinerBallType.Doosra == && (typeOfShot == TypeOfShot.straightDrive).straightDrive)
//                   {
//                       run += 4;
//                       }
//                   else if(sppinerBallType.Doosra == && (typeOfShot == TypeOfShot.straightDrive).duck)
//                   {
//                       run += 1;
//                       }
//                   else if(sppinerBallType.Doosra == && (typeOfShot == TypeOfShot.straightDrive).scoop ||
//                         sppinerBallType.Doosra == && (typeOfShot == TypeOfShot.straightDrive).hook ||
//                         sppinerBallType.Doosra == && (typeOfShot == TypeOfShot.straightDrive).pull ||
//                         sppinerBallType.Doosra == && (typeOfShot == TypeOfShot.straightDrive).onDrive ||
//                         sppinerBallType.Doosra == && (typeOfShot == TypeOfShot.straightDrive).offDrive ||
//                         sppinerBallType.Doosra == && (typeOfShot == TypeOfShot.straightDrive).coverDrive ||
//                         sppinerBallType.Doosra == && (typeOfShot == TypeOfShot.straightDrive).squareDrive || 
//                         sppinerBallType.Doosra == && (typeOfShot == TypeOfShot.straightDrive).squareCut ||
//                         sppinerBallType.Doosra == && (typeOfShot == TypeOfShot.straightDrive).upeerCut)
//                   {
//                       run += 0;
//                   }
//                   }

//                   else if(sppinerBallType.armBall){
//                       if(sppinerBallType.armBall == && (typeOfShot == TypeOfShot.straightDrive).sweep ||
//                         sppinerBallType.armBall == && (typeOfShot == TypeOfShot.straightDrive).loftedDrive ||
//                         sppinerBallType.armBall == && (typeOfShot == TypeOfShot.straightDrive).reveseSweep){
//                           run += 6;
//                       } 
//                       else if(sppinerBallType.armBall == && (typeOfShot == TypeOfShot.straightDrive).scoop || 
//                              sppinerBallType.armBall == && (typeOfShot == TypeOfShot.straightDrive).onDrive || 
//                              sppinerBallType.armBall == && (typeOfShot == TypeOfShot.straightDrive).straightDrive) {
//                           run += 4;
//                       }
//                       else if(sppinerBallType.armBall && ( && (typeOfShot == TypeOfShot.straightDrive)== && (typeOfShot == TypeOfShot.straightDrive).legGlance) ||
//                               sppinerBallType.armBall == && (typeOfShot == TypeOfShot.straightDrive).offDrive ||
//                               sppinerBallType.armBall == && (typeOfShot == TypeOfShot.straightDrive).coverDrive ||
//                               sppinerBallType.armBall == && (typeOfShot == TypeOfShot.straightDrive).squareDrive ||
//                               sppinerBallType.armBall == && (typeOfShot == TypeOfShot.straightDrive).duck) {
//                           run += 1;
//                       }
//                       else if(sppinerBallType.armBall == && (typeOfShot == TypeOfShot.straightDrive).hook ||
//                               sppinerBallType.armBall == && (typeOfShot == TypeOfShot.straightDrive).pull || 
//                               sppinerBallType.armBall == && (typeOfShot == TypeOfShot.straightDrive).squareCut ||
//                               sppinerBallType.armBall == && (typeOfShot == TypeOfShot.straightDrive).upeerCut
//                               ) {
//                           run += 0;
//                       }
//                   }

//                   else if(sppinerBallType.offBreak){
//                       if(sppinerBallType.offBreak == && (typeOfShot == TypeOfShot.straightDrive).sweep ||
//                       sppinerBallType.offBreak == && (typeOfShot == TypeOfShot.straightDrive).loftedDrive ||
//                       sppinerBallType.offBreak == && (typeOfShot == TypeOfShot.straightDrive).reveseSweep){
//                           run += 6;
//                       } 
//                       else if(sppinerBallType.offBreak == && (typeOfShot == TypeOfShot.straightDrive).straightDrive
//                              ){
//                           run += 4;
//                       }
//                       else if(sppinerBallType.offBreak == && (typeOfShot == TypeOfShot.straightDrive).scoop ||
//                               sppinerBallType.offBreak && ( && (typeOfShot == TypeOfShot.straightDrive)== && (typeOfShot == TypeOfShot.straightDrive).legGlance) ||
//                               sppinerBallType.offBreak == && (typeOfShot == TypeOfShot.straightDrive).onDrive ||
//                               sppinerBallType.offBreak == && (typeOfShot == TypeOfShot.straightDrive).offDrive ||
//                               sppinerBallType.offBreak == && (typeOfShot == TypeOfShot.straightDrive).coverDrive ||
//                               sppinerBallType.offBreak == && (typeOfShot == TypeOfShot.straightDrive).squareDrive ){
//                           run += 1;
//                       }
//                       else if(sppinerBallType.offBreak == && (typeOfShot == TypeOfShot.straightDrive).hook ||
//                               sppinerBallType.offBreak == && (typeOfShot == TypeOfShot.straightDrive).pull ||
//                               sppinerBallType.offBreak == && (typeOfShot == TypeOfShot.straightDrive).squareCut ||
//                               sppinerBallType.offBreak == && (typeOfShot == TypeOfShot.straightDrive).upeerCut){
//                           run += 0;
//                       }
//                   }
            
//          }

//     }

//     // uint256 run = 0;

//     // functtion setTheRun() public view {
//     //     if()
//     // }

// //     enum ChooseField {Tie,BAT,BALL}
// //     ChooseField chooseField;

// //     uint randNum = uint(keccak256(abi.encodePacked(block.timestamp,msg.sender))) % 2;}

// //     function checkField(uint _value) public {
// //       if(_value == randNumber)
// //         require(uint(ChooseField.BALL) >= _value);
// //         chooseField = ChooseField(_value);
// //   }

// }
// }




// //Over Counyt
// //Run functio peramter 
// //Compuer ka two player 
// //OVER DELETE
// //
// //ERC721 TOKENS MENTAING
// //RUN COUNT 
// //Number of ball 2
// //player 1 and player 2 (run,ball,wicket)
// //2nd ening target 
// //computer bating karve 
// //
// //high score Documentery 
// //5 OVER AND 2 BALL 
// //TOTALRUN, COUNTTOTALLRUN 

