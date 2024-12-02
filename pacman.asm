includelib kernel32.lib
includelib user32.lib
includelib Winmm.lib


INCLUDE Irvine32.inc
INCLUDE macros.inc


PlaySound PROTO,
        pszSound:PTR BYTE, 
        hmod:DWORD, 
        fdwSound:DWORD


.data
        info_file BYTE "3.wav",0
        titleScreen BYTE "_____________________________  ______________   __,"
                  BYTE " ___  __ \__    |_  ____/__  |/  /__    |__  | / /,"
                  BYTE "__  /_/ /_  /| |  /    __  /|_/ /__  /| |_   |/ /,"
                  BYTE "_  ____/_  ___ / /___  _  /  / / _  ___ |  /|  /,"  
                  BYTE "/_/     /_/  |_\____/  /_/  /_/  /_/  |_/_/ |_/,"


        titleSize BYTE 248


        levelOneMaze BYTE "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!,"
                  BYTE "!!:::::::::::::::::::::::::::::::::::::!!:::::::::::::::::::::::::::::::::::::!!,"
                  BYTE "!!:                                   :!!:                                   :!!,"
                  BYTE "!!: !!:  !!!!!!!!!!!!!!!!!!!!!!!!     :!!:     !!!!!!!!!!!!!!!!!!!!!!!!  :!! :!!,"
                  BYTE "!!: !!:                  :!!:                      :!!:                  :!! :!!,"
                  BYTE "!!: !!:                  :!!:                      :!!:                  :!! :!!,"
                  BYTE "!!: !!:                  :!!: :!!:    :!!:    :!!: :!!:                  :!! :!!,"
                  BYTE "!!: !!:                  :!!: :!!:    :!!:    :!!: :!!:                  :!! :!!,"
                  BYTE "!!: !!:                       :!!:    :!!:    :!!:                       :!! :!!,"
                  BYTE "!!: !!:                       :!!:    :!!:    :!!:                       :!! :!!,"
                  BYTE "!!: !!:      !!!!!!!!!!!!!!!!!!!!:    :!!:    :!!!!!!!!!!!!!!!!!!!!      :!! :!!,"
                  BYTE "!!: !!:                                                                  :!! :!!,"
                  BYTE "!!: !!:                                                                  :!! :!!,"
                  BYTE "!!: !!:    :!!::!!!!!!!!!!:   :!!!!!!!!  !!!!!!!!:   :!!!!!!!!!!::!!:    :!! :!!,"
                  BYTE "!!: !!:    :!!:        :!!:   :!!              !!:   :!!:        :!!:    :!! :!!,"
                  BYTE "!!: !!:    :!!:        :!!:   :!!              !!:   :!!:        :!!:    :!! :!!,"
                  BYTE "!!: !!:    :!!!!!!!!!!::!!:   :!!!!!!!!!!!!!!!!!!:   :!!::!!!!!!!!!!:    :!! :!!,"
                  BYTE "!!: !!:                                                                  :!! :!!,"
                  BYTE "!!: !!:                                                                  :!! :!!,"
                  BYTE "!!: !!:      !!!!!!!!!!!!!!!!!!!!:    :!!:    :!!!!!!!!!!!!!!!!!!!!      :!! :!!,"
                  BYTE "!!: !!:                       :!!:    :!!:    :!!:                       :!! :!!,"
                  BYTE "!!: !!:                       :!!:    :!!:    :!!:                       :!! :!!,"
                  BYTE "!!: !!:                  :!!: :!!:    :!!:    :!!: :!!:                  :!! :!!,"
                  BYTE "!!: !!:                  :!!: :!!:    :!!:    :!!: :!!:                  :!! :!!,"
                  BYTE "!!: !!:                  :!!:                      :!!:                  :!! :!!,"
                  BYTE "!!: !!:                  :!!:                      :!!:                  :!! :!!,"
                  BYTE "!!: !!:  !!!!!!!!!!!!!!!!!!!!!!!!     :!!:     !!!!!!!!!!!!!!!!!!!!!!!!  :!! :!!,"
                  BYTE "!!:                                   :!!:                                   :!!,"
                  BYTE "!!:::::::::::::::::::::::::::::::::::::!!:::::::::::::::::::::::::::::::::::::!!,"
                  BYTE "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!,"




        levelOneMazeSize WORD 2186


        levelTwoMaze BYTE "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!,"
                  BYTE "!!:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::!!,"
                  BYTE "!!:                                                                           :!!,"
                  BYTE "!!:  !!!!!!!  !!!!!!!       !!!!!!!!        !!!!!!!!       !!!!!!!  !!!!!!!   :!!,"
                  BYTE "!!:      :!!  !!:           !!::::::   !!   ::::::!!           :!!  !!:       :!!,"
                  BYTE "!!:  !!: :!!  !!: :!!       !!:        !!        :!!       !!: :!!  !!: :!!   :!!,"
                  BYTE "!!:  !!: :!!  !!: :!!       !!:    !!!!!!!!!!    :!!       !!: :!!  !!: :!!   :!!,"
                  BYTE "!!:  !!: :!!  !!: :!!              ::::::::::              !!: :!!  !!: :!!   :!!,"
                  BYTE "!!:  !!::::::::::::!!       !!:    !!!!!!!!!!    :!!       !!::::::::::::!!   :!!,"
                  BYTE "!!:  !!!!!!!!!!!!!!!!       !!:        !!        :!!       !!!!!!!!!!!!!!!!   :!!,"
                  BYTE "!!:                         !!::::::   !!   ::::::!!                          :!!,"
                  BYTE "!!:  !!!!!!!  !!!!!!!       !!!!!!!!        !!!!!!!!       !!!!!!!   !!!!!!!  :!!,"
                  BYTE "!!:  !!:::::  :::::!!                                      !!:::::   :::::!!  :!!,"
                  BYTE "!!:  !!: !!!!!!!! :!!         :!!!!!!!!  !!!!!!!!:         !!:  !!!!!!!! :!!  :!!,"
                  BYTE "!!:  !!:    !!    :!!         :!!              !!:         !!:     !!    :!!  :!!,"
                  BYTE "!!:  !!:    !!    :!!         :!!              !!:         !!:     !!    :!!  :!!,"
                  BYTE "!!:  !!: !!!!!!!! :!!         :!!!!!!!!!!!!!!!!!!:         !!:  !!!!!!!! :!!  :!!,"
                  BYTE "!!:  !!:::::  :::::!!                                      !!:::::   :::::!!  :!!,"
                  BYTE "!!:  !!!!!!!  !!!!!!!       !!!!!!!!        !!!!!!!!       !!!!!!!   !!!!!!!  :!!,"
                  BYTE "!!:                         !!::::::   !!   ::::::!!                          :!!,"
                  BYTE "!!:  !!!!!!!!!!!!!!!!       !!:        !!        :!!       !!!!!!!!!!!!!!!!   :!!,"
                  BYTE "!!:  !!::::::::::::!!       !!:    !!!!!!!!!!    :!!       !!::::::::::::!!   :!!,"
                  BYTE "!!:  !!: :!!  !!: :!!              ::::::::::              !!: :!!  !!: :!!   :!!,"
                  BYTE "!!:  !!: :!!  !!: :!!       !!:    !!!!!!!!!!    :!!       !!: :!!  !!: :!!   :!!,"
                  BYTE "!!:  !!: :!!  !!: :!!       !!:        !!        :!!       !!: :!!  !!: :!!   :!!,"
                  BYTE "!!:      :!!  !!:           !!::::::   !!   ::::::!!           :!!  !!:       :!!,"
                  BYTE "!!:  !!!!!!!  !!!!!!!       !!!!!!!!        !!!!!!!!       !!!!!!!  !!!!!!!   :!!,"
                  BYTE "!!:                                                                           :!!,"
                  BYTE "!!:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::!!,"
                  BYTE "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!,"




        levelTwoMazeSize WORD 2459


        levelThreeMaze BYTE "  !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!  ,"
                  BYTE "  !!:::::::::::::::::::::::::::::::::::::!!::::::::::::::::::::::::::::::::::::::!!  ,"
                  BYTE "!!!!:                                   :!!:                                    :!!!!,"
                  BYTE "            !!!!!!!!!!!!!!!  !!!!!!!!!  :!!:  !!!!!!!!!   !!!!!!!!!!!!!!!            ,"
                  BYTE "            !!:::::::::::::  !!:::::::  :!!:  :::::::!!   :::::::::::::!!            ,"
                  BYTE "!!!!:       !!:       !!:    !!:        :!!:        :!!    :!!        :!!       :!!!!,"
                  BYTE "  !!:       !!:       !!:    !!:    !!!!!!!!!!!!    :!!    :!!        :!!       :!!  ,"
                  BYTE "  !!:       !!: !!:   !!:           ::::::::::::           :!!   :!!  :!!       :!!  ,"
                  BYTE "  !!: !!!!      !!:   !!!!!!!!!!!!!!!!  :!!:  !!!!!!!!!!!!!!!!   :!!       !!!! :!!  ,"
                  BYTE "  !!: !!!!      !!:                     :!!:                     :!!       !!!! :!!  ,"
                  BYTE "  !!: !!!!      !!:::::::::::::  !!!!!!!!!!!!!!!!!!  :::::::::::::!!       !!!! :!!  ,"
                  BYTE "  !!: !!!!      !!!!!!!!!!!!!!!  :::::::    :::::::  !!!!!!!!!!!!!!!       !!!! :!!  ,"
                  BYTE "  !!:                            !!!!!!!    !!!!!!!                             :!!  ,"
                  BYTE "  !!:   !!!!!!!!!!!!!!!!!!       !!              !!       !!!!!!!!!!!!!!!!!!!   :!!  ,"
                  BYTE "  !!:   !!!!!!!!!!!!!!!!!!       !!              !!       !!!!!!!!!!!!!!!!!!!   :!!  ,"
                  BYTE "  !!:                            !!!!!!!!!!!!!!!!!!                             :!!  ,"
                  BYTE "  !!: !!!!      !!!!!!!!!!!!!!!  ::::::::::::::::::  !!!!!!!!!!!!!!!       !!!! :!!  ,"
                  BYTE "  !!: !!!!      !!:::::::::::::  !!!!!!!!!!!!!!!!!!  :::::::::::::!!       !!!! :!!  ,"
                  BYTE "  !!: !!!!      !!:                     :!!:                     :!!       !!!! :!!  ,"
                  BYTE "  !!: !!!!      !!:   !!!!!!!!!!!!!!!!  :!!:  !!!!!!!!!!!!!!!!   :!!       !!!! :!!  ,"
                  BYTE "  !!: !!!!      !!:   !!::::::::::::::  :!!:  ::::::::::::::!!   :!!       !!!! :!!  ,"
                  BYTE "  !!:       !!:       !!:    !!:    ::::::::::::     :!!   :!!   :!!  :!!       :!!  ,"
                  BYTE "  !!:       !!:       !!:    !!:    !!!!!!!!!!!!     :!!   :!!        :!!       :!!  ,"
                  BYTE "!!!!:       !!:       !!:    !!:        :!!:         :!!   :!!        :!!       :!!!!,"
                  BYTE "            !!:::::::::::::  !!:::::::  :!!:   :::::::!!  :::::::::::::!!            ,"
                  BYTE "            !!!!!!!!!!!!!!!  !!!!!!!!!  :!!:   !!!!!!!!!  !!!!!!!!!!!!!!!            ,"
                  BYTE "!!!!:                                   :!!:                                    :!!!!,"
                  BYTE "  !!:::::::::::::::::::::::::::::::::::::!!::::::::::::::::::::::::::::::::::::::!!  ,"
                  BYTE "  !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!  ,"


        multiplier DWORD 82
        playerName BYTE 20 DUP(?)


        ;Ghost Coordinates
        xPosG BYTE 40
        yPosG BYTE 15
        xPosG2 BYTE 42
        yPosG2 BYTE 14
        xPosG3 BYTE 43
        yPosG3 BYTE 14


        ;Player Coordinates
        xPos BYTE 40
        yPos BYTE 18


        inputChar BYTE 0
        
        ;Score and Lives Counters
        score WORD 0
        lives WORD 3


        ;Wall and Coin Flags
        wallFlag BYTE 0
        coinFlag BYTE 1


        ;Ghost Movement Flags,
        moveUpFlag BYTE 1
        moveDownFlag BYTE 0
        moveLeftFlag BYTE 0
        moveRightFlag BYTE 0


        moveUpFlag2 BYTE 1
        moveDownFlag2 BYTE 0
        moveLeftFlag2 BYTE 0
        moveRightFlag2 BYTE 0


        moveUpFlag3 BYTE 1
        moveDownFlag3 BYTE 0
        moveLeftFlag3 BYTE 0
        moveRightFlag3 BYTE 0


        ;Ghost Future Positions
        nextXPosG BYTE ?
        nextYPosG BYTE ?
        nextXPosG2 BYTE ?
        nextYPosG2 BYTE ?
        nextXPosG3 BYTE ?
        nextYPosG3 BYTE ?


        ;Ghost Collision Flags
        ghostWallFlag BYTE 0
        ghostCoinFlag BYTE 0
        ghostWallFlag2 BYTE 0
        ghostCoinFlag2 BYTE 0
        ghostWallFlag3 BYTE 0
        ghostCoinFlag3 BYTE 0
        ghostFruitFlag BYTE 0
        ghostFruitFlag2 BYTE 0
        ghostFruitFlag3 BYTE 0


        ;Player Movement Flags
        resetPlayerFlag BYTE 0
        playerUpFlag BYTE 0
        playerDownFlag BYTE 0
        playerLeftFlag BYTE 0
        playerRightFlag BYTE 0
        
        ;Fruit Coordinates and Flag
        fruitXPos BYTE 40
        fruitYPos BYTE ?
        fruitFlag BYTE 0


        ;Level Counter
        lvlCounter BYTE 1
.code


main PROC
        INVOKE PlaySound, OFFSET info_file, NULL, 20001H
        call displayTitle
        call clrscr
        mov dh,0
        mov dl,0
        call Gotoxy
        call drawLevelOneMaze
        call drawPlayer
        call drawGhost
        call level1


        cmp lvlCounter,2
        je proceedToLvl2
        jmp gameOver


        proceedToLvl2:
                mov xPos, 40
                mov yPos, 18
                mov wallFlag,0
                mov coinFlag,1
                mov moveUpFlag,1
                mov moveDownFlag,0
                mov moveLeftFlag,0
                mov moveRightFlag,0
                mov ghostWallFlag,0
                mov ghostCoinFlag,0
                mov resetPlayerFlag,0
                mov playerUpFlag,0
                mov playerDownFlag,0
                mov playerLeftFlag,0
                mov playerRightFlag,0
                mov ghostFruitFlag,0
                mov ghostFruitFlag2,0
                mov ghostFruitFlag3,0




                call clrscr
                call drawLevelTwoMaze
                call drawPlayer
                call drawGhost
                call level2


        cmp lvlCounter,3
        je proceedToLvl3
        jmp gameOver


        proceedToLvl3:
                mov xPos, 40
                mov yPos, 18
                mov wallFlag,0
                mov coinFlag,1
                mov fruitFlag,0
                mov moveUpFlag,1
                mov moveDownFlag,0
                mov moveLeftFlag,0
                mov moveRightFlag,1
                mov ghostWallFlag,0
                mov ghostCoinFlag,0
                mov resetPlayerFlag,0
                mov playerUpFlag,0
                mov playerDownFlag,0
                mov playerLeftFlag,0
                mov playerRightFlag,0
                mov ghostFruitFlag,0
                mov ghostFruitFlag2,0
                mov ghostFruitFlag3,0
                mov xPosG,41
                mov yPosG,14


                call clrscr
                call drawLevelThreeMaze
                call drawPlayer
                call drawGhost
                call level3


        gameOver:
                call clrscr
                call gameOverScreen
                exit
        
main ENDP


;The next 3 PROCS contain the gameloop for each level
level1 PROC
        gameLoop:
                        mov eax,50
                        call Delay
                        mov eax,0
                        call moveGhost
                        call ghostPlayerColl


                        reset:
                                cmp resetPlayerFlag,1
                                je resetPlayerFlagTo40_18
                                jmp keepPlaying




                        resetPlayerFlagTo40_18:
                                cmp lives,0
                                jl exitGame
                                mov xPos,40
                                mov yPos,18
                                call UpdatePlayer
                                call drawPlayer
                                mov resetPlayerFlag,0


                        keepPlaying:
                        mov eax,white (black * 16)
                        call SetTextColor


                        mov dl,12
                        mov dh,30
                        call Gotoxy
                        mWrite "Score: "
                        mov ax,score
                        call writeInt
                        mov dl,28
                        call Gotoxy
                        mWrite "Lives: "
                        mov ax,lives
                        call WriteDec
                        mov dl,44
                        call Gotoxy
                        mWrite "Player: "
                        lea edx,playerName
                        call writeString
                        mov dl,64
                        mov dh,30
                        call Gotoxy
                        mWrite "Level: "
                        movsx ax,lvlCounter
                        call WriteDec




                        call checkCoinsForLevelUp
                        cmp coinFlag,0
                        je levelUp


                        resumeGame:
                        call ReadKey
                        mov inputChar,al


                        cmp inputChar,"x"
                        je exitGame


                        cmp inputChar,"p"
                        je pauseGame


                        cmp inputChar,"w"
                        je moveUp


                        cmp inputChar,"s"
                        je moveDown


                        cmp inputChar,"a"
                        je moveLeft


                        cmp inputChar,"d"
                        je moveRight
                        jmp stayHere
                pauseGame:
                        call ReadChar
                        cmp al,"r"
                        je resumeGame


                stayHere:
                cmp playerUpFlag,1
                je moveUp


                cmp playerDownFlag,1
                je moveDown


                cmp playerLeftFlag,1
                je moveLeft


                cmp playerRightFlag,1
                je moveRight
                        
                jmp gameLoop
                moveUp:
                        mov playerUpFlag,1
                        mov playerDownFlag,0
                        mov playerLeftFlag,0
                        mov playerRightFlag,0
                        
                        call collectWallsUp
                        cmp wallFlag,1
                        je jumpEnd


                        call collectCoinsUp
                        mov ecx,1
                        jumpLoop:
                                call UpdatePlayer
                                dec yPos
                                call drawPlayer
                                mov eax,70
                                call Delay
                        loop jumpLoop
                        jumpEnd:
                        mov wallFlag,0
                        jmp gameLoop




                moveDown:
                        mov playerUpFlag,0
                        mov playerDownFlag,1
                        mov playerLeftFlag,0
                        mov playerRightFlag,0


                        call collectWallsDown
                        cmp wallFlag,1
                        je moveDownEnd
                        call collectCoinsDown


                        call UpdatePlayer
                        inc yPos
                        call drawPlayer
                        moveDownEnd:
                                mov wallFlag,0
                                jmp gameLoop


                moveLeft:
                        mov playerUpFlag,0
                        mov playerDownFlag,0
                        mov playerLeftFlag,1
                        mov playerRightFlag,0


                        call collectWallsLeft
                        cmp wallFlag,1
                        je moveLeftEnd
                        call collectCoinsLeft


                        call UpdatePlayer
                        dec xPos
                        call drawPlayer
                        moveLeftEnd:
                                mov wallFlag,0
                                jmp gameLoop


                moveRight:
                        mov playerUpFlag,0
                        mov playerDownFlag,0
                        mov playerLeftFlag,0
                        mov playerRightFlag,1


                        call collectWallsRight
                        cmp wallFlag,1
                        je moveRightEnd
                        call collectCoinsRight


                        call UpdatePlayer
                        inc xPos
                        call drawPlayer
                        moveRightEnd:
                                mov wallFlag,0
                                jmp gameLoop


        levelUp:
                inc lvlCounter
                ret


        exitGame:
                ret
level1 ENDP


level2 PROC
        gameLoop:
                        mov eax,50
                        call Delay
                        mov eax,0
                        call moveGhost
                        call ghostPlayerColl


                        cmp fruitFlag,0
                        je createFruit
                        jmp reset
                        createFruit:
                                call generateFruit
                        reset:
                                cmp resetPlayerFlag,1
                                je resetPlayerFlagTo40_18
                                jmp keepPlaying




                        resetPlayerFlagTo40_18:
                                cmp lives,0
                                jl exitGame
                                mov xPos,40
                                mov yPos,18
                                call UpdatePlayer
                                call drawPlayer
                                mov resetPlayerFlag,0


                        keepPlaying:
                        mov eax,white (black * 16)
                        call SetTextColor


                        mov dl,12
                        mov dh,30
                        call Gotoxy
                        mWrite "Score: "
                        mov ax,score
                        call writeInt
                        mov dl,28
                        call Gotoxy
                        mWrite "Lives: "
                        mov ax,lives
                        call WriteDec
                        mov dl,44
                        call Gotoxy
                        mWrite "Player: "
                        lea edx,playerName
                        call writeString
                        mov dl,64
                        mov dh,30
                        call Gotoxy
                        mWrite "Level: "
                        movsx ax,lvlCounter
                        call WriteDec


                        call checkCoinsForLevelUp2
                        cmp coinFlag,0
                        je levelUp


                resumeGame:
                        call ReadKey
                        mov inputChar,al


                        cmp inputChar,"x"
                        je exitGame
                        
                        cmp inputChar,"p"
                        je pauseGame


                        cmp inputChar,"w"
                        je moveUp


                        cmp inputChar,"s"
                        je moveDown


                        cmp inputChar,"a"
                        je moveLeft


                        cmp inputChar,"d"
                        je moveRight
                        jmp stayHere


                pauseGame:
                        call ReadChar
                        cmp al,"r"
                        je resumeGame


                stayHere:
                cmp playerUpFlag,1
                je moveUp


                cmp playerDownFlag,1
                je moveDown


                cmp playerLeftFlag,1
                je moveLeft


                cmp playerRightFlag,1
                je moveRight
                        
                jmp gameLoop
                moveUp:
                        mov playerUpFlag,1
                        mov playerDownFlag,0
                        mov playerLeftFlag,0
                        mov playerRightFlag,0


                        call collectWallsUp
                        cmp wallFlag,1
                        je jumpEnd


                        call collectCoinsUp
                        call collectFruitUp


                        mov ecx,1
                        jumpLoop:
                                call UpdatePlayer
                                dec yPos
                                call drawPlayer
                                mov eax,70
                                call Delay
                        loop jumpLoop
                        jumpEnd:
                        mov wallFlag,0
                        jmp gameLoop




                moveDown:
                        mov playerUpFlag,0
                        mov playerDownFlag,1
                        mov playerLeftFlag,0
                        mov playerRightFlag,0


                        call collectWallsDown
                        cmp wallFlag,1
                        je moveDownEnd
                        call collectCoinsDown
                        call collectFruitDown


                        call UpdatePlayer
                        inc yPos
                        call drawPlayer
                        moveDownEnd:
                                mov wallFlag,0
                                jmp gameLoop


                moveLeft:
                        mov playerUpFlag,0
                        mov playerDownFlag,0
                        mov playerLeftFlag,1
                        mov playerRightFlag,0


                        call collectWallsLeft
                        cmp wallFlag,1
                        je moveLeftEnd
                        call collectCoinsLeft
                        call collectFruitLeft


                        call UpdatePlayer
                        dec xPos
                        call drawPlayer
                        moveLeftEnd:
                                mov wallFlag,0
                                jmp gameLoop


                moveRight:
                        mov playerUpFlag,0
                        mov playerDownFlag,0
                        mov playerLeftFlag,0
                        mov playerRightFlag,1


                        call collectWallsRight
                        cmp wallFlag,1
                        je moveRightEnd
                        call collectCoinsRight
                        call collectFruitRight


                        call UpdatePlayer
                        inc xPos
                        call drawPlayer
                        moveRightEnd:
                                mov wallFlag,0
                                jmp gameLoop


        levelUp:
                inc lvlCounter


        exitGame:
                ret
level2 ENDP


level3 PROC
        gameLoop:
                        mov eax,50
                        call Delay
                        mov eax,0
                        call moveGhost
                        call moveGhost2
                        call moveGhost3
                        call ghostPlayerColl
                        call ghostPlayerColl2
                        call ghostPlayerColl3


                        cmp fruitFlag,0
                        je createFruit
                        jmp reset
                        createFruit:
                                call generateFruit
                        reset:
                                cmp resetPlayerFlag,1
                                je resetPlayerFlagTo40_18
                                jmp keepPlaying




                        resetPlayerFlagTo40_18:
                                cmp lives,0
                                jl exitGame
                                mov xPos,40
                                mov yPos,18
                                call UpdatePlayer
                                call drawPlayer
                                mov resetPlayerFlag,0


                        keepPlaying:
                        mov eax,white (black * 16)
                        call SetTextColor


                        mov dl,12
                        mov dh,30
                        call Gotoxy
                        mWrite "Score: "
                        mov ax,score
                        call writeInt
                        mov dl,28
                        call Gotoxy
                        mWrite "Lives: "
                        mov ax,lives
                        call WriteDec
                        mov dl,44
                        call Gotoxy
                        mWrite "Player: "
                        lea edx,playerName
                        call writeString
                        mov dl,64
                        mov dh,30
                        call Gotoxy
                        mWrite "Level: "
                        movsx ax,lvlCounter
                        call WriteDec


                        call checkCoinsForLevelUp3
                        cmp coinFlag,0
                        je exitGame
                resumeGame:
                        call ReadKey
                        mov inputChar,al


                        cmp inputChar,"x"
                        je exitGame


                        cmp inputChar,"p"
                        je pauseGame


                        cmp inputChar,"w"
                        je moveUp


                        cmp inputChar,"s"
                        je moveDown


                        cmp inputChar,"a"
                        je moveLeft


                        cmp inputChar,"d"
                        je moveRight
                        jmp stayHere


                pauseGame:
                        call ReadChar
                        cmp al,"r"
                        je resumeGame


                stayHere:
                cmp playerUpFlag,1
                je moveUp


                cmp playerDownFlag,1
                je moveDown


                cmp playerLeftFlag,1
                je moveLeft


                cmp playerRightFlag,1
                je moveRight
                        
                jmp gameLoop
                moveUp:
                        mov playerUpFlag,1
                        mov playerDownFlag,0
                        mov playerLeftFlag,0
                        mov playerRightFlag,0


                        call collectWallsUp
                        cmp wallFlag,1
                        je jumpEnd


                        call collectCoinsUp
                        call collectFruitUp


                        mov ecx,1
                        jumpLoop:
                                call UpdatePlayer
                                dec yPos
                                call drawPlayer
                                mov eax,70
                                call Delay
                        loop jumpLoop
                        jumpEnd:
                        mov wallFlag,0
                        jmp gameLoop




                moveDown:
                        mov playerUpFlag,0
                        mov playerDownFlag,1
                        mov playerLeftFlag,0
                        mov playerRightFlag,0


                        call collectWallsDown
                        cmp wallFlag,1
                        je moveDownEnd
                        call collectCoinsDown
                        call collectFruitDown


                        call UpdatePlayer
                        inc yPos
                        call drawPlayer
                        moveDownEnd:
                                mov wallFlag,0
                                jmp gameLoop


                moveLeft:
                        mov playerUpFlag,0
                        mov playerDownFlag,0
                        mov playerLeftFlag,1
                        mov playerRightFlag,0


                        call collectWallsLeft
                        cmp wallFlag,1
                        je moveLeftEnd
                        call collectCoinsLeft
                        call collectFruitLeft


                        cmp xPos,1
                        je teleportRight
                        jmp stay1
                        teleportRight:
                                call updatePlayer
                                mov xPos,85
                                call drawPlayer
                                jmp moveLeftEnd


                        stay1:
                        call UpdatePlayer
                        dec xPos
                        call drawPlayer
                        moveLeftEnd:
                                mov wallFlag,0
                                jmp gameLoop


                moveRight:
                        mov playerUpFlag,0
                        mov playerDownFlag,0
                        mov playerLeftFlag,0
                        mov playerRightFlag,1


                        call collectWallsRight
                        cmp wallFlag,1
                        je moveRightEnd
                        call collectCoinsRight
                        call collectFruitRight
                        cmp xPos,84
                        je teleportLeft
                        jmp stay2
                        teleportLeft:
                            call UpdatePlayer
                                mov xPos,2
                                call drawPlayer
                                jmp moveRightEnd


                        stay2:
                        call UpdatePlayer
                        inc xPos
                        call drawPlayer
                        moveRightEnd:
                                mov wallFlag,0
                                jmp gameLoop


        exitGame:
                ret
level3 ENDP


;The next 4 PROCS check for food pickup by player from each direction
collectCoinsUp PROC
        cmp lvlCounter,1
        je l1


        cmp lvlCounter,2
        je l2


        cmp lvlCounter,3
        je l3


        l1:
                mov bl,yPos
                dec bl
                movzx esi,bl
                imul esi,81
                movzx eax,xPos
                add esi,eax
                mov bl,levelOneMaze[esi]
                cmp bl,":"
                je incScore1
                jmp return


                incScore1:
                        inc score
                        mov levelOneMaze[esi],' '
                        jmp return


        l2:
                mov bl,yPos
                dec bl
                movzx esi,bl
                imul esi,82
                movzx eax,xPos
                add esi,eax
                mov bl,levelTwoMaze[esi]
                cmp bl,":"
                je incScore2
                jmp return


                incScore2:
                        inc score
                        mov levelTwoMaze[esi],' '
                        jmp return
        l3:
                mov bl,yPos
                dec bl
                movzx esi,bl
                imul esi,86
                movzx eax,xPos
                add esi,eax
                mov bl,levelThreeMaze[esi]
                cmp bl,":"
                je incScore3
                jmp return


                incScore3:
                        inc score
                        mov levelThreeMaze[esi],' '


        return:
                ret
collectCoinsUp ENDP


collectCoinsDown PROC
        cmp lvlCounter,1
        je l1


        cmp lvlCounter,2
        je l2


        cmp lvlCounter,3
        je l3
        
        l1:
                mov bl,yPos
                inc bl
                movzx esi,bl
                imul esi,81
                movzx eax,xPos
                add esi,eax
                mov bl,levelOneMaze[esi]
                cmp bl,":"
                je incScore1
                jmp return


                incScore1:
                        inc score
                        mov levelOneMaze[esi],' '
                        jmp return


        l2:
                mov bl,yPos
                inc bl
                movzx esi,bl
                imul esi,82
                movzx eax,xPos
                add esi,eax
                mov bl,levelTwoMaze[esi]
                cmp bl,":"
                je incScore2
                jmp return


                incScore2:
                        inc score
                        mov levelTwoMaze[esi],' '
                        jmp return
        l3:
                mov bl,yPos
                inc bl
                movzx esi,bl
                imul esi,86
                movzx eax,xPos
                add esi,eax
                mov bl,levelThreeMaze[esi]
                cmp bl,":"
                je incScore3
                jmp return


                incScore3:
                        inc score
                        mov levelThreeMaze[esi],' '
                        jmp return


        return:
                ret
collectCoinsDown ENDP


collectCoinsLeft PROC
        cmp lvlCounter,1
        je l1


        cmp lvlCounter,2
        je l2


        cmp lvlCounter,3
        je l3
        
        l1:
                mov bl,xPos
                dec bl
                movzx esi,yPos
                imul esi,81
                movzx eax,bl
                add esi,eax
                mov bl,levelOneMaze[esi]
                cmp bl,":"
                je incScore1
                jmp return


                incScore1:
                        inc score
                        mov levelOneMaze[esi],' '
                        jmp return


        l2:
                mov bl,xPos
                dec bl
                movzx esi,yPos
                imul esi,82
                movzx eax,bl
                add esi,eax
                mov bl,levelTwoMaze[esi]
                cmp bl,":"
                je incScore2
                jmp return


                incScore2:
                        inc score
                        mov levelTwoMaze[esi],' '
                        jmp return


        l3:
                mov bl,xPos
                dec bl
                movzx esi,yPos
                imul esi,86
                movzx eax,bl
                add esi,eax
                mov bl,levelThreeMaze[esi]
                cmp bl,":"
                je incScore3
                jmp return


                incScore3:
                        inc score
                        mov levelThreeMaze[esi],' '
                        jmp return


        return:
                ret
collectCoinsLeft ENDP


collectCoinsRight PROC
        cmp lvlCounter,1
        je l1


        cmp lvlCounter,2
        je l2


        cmp lvlCounter,3
        je l3
        l1:
                mov bl,xPos
                inc bl
                movzx esi,yPos
                imul esi,81
                movzx eax,bl
                add esi,eax
                mov bl,levelOneMaze[esi]
                cmp bl,":"
                je incScore1
                jmp return


                incScore1:
                        inc score
                        mov levelOneMaze[esi],' '
                        jmp return


        l2:
                mov bl,xPos
                inc bl
                movzx esi,yPos
                imul esi,82
                movzx eax,bl
                add esi,eax
                mov bl,levelTwoMaze[esi]
                cmp bl,":"
                je incScore2
                jmp return


                incScore2:
                        inc score
                        mov levelTwoMaze[esi],' '
                        jmp return


        l3:
                mov bl,xPos
                inc bl
                movzx esi,yPos
                imul esi,86
                movzx eax,bl
                add esi,eax
                mov bl,levelThreeMaze[esi]
                cmp bl,":"
                je incScore3
                jmp return


                incScore3:
                        inc score
                        mov levelThreeMaze[esi],' '
                        jmp return


        return:
                ret
collectCoinsRight ENDP


;The next 4 PROCS check for player and wall collectision from each direction
collectWallsUp PROC
        cmp lvlCounter,1
        je l1


        cmp lvlCounter,2
        je l2


        cmp lvlCounter,3
        je l3


        l1:
                mov bl,yPos
                dec bl
                movzx esi,bl
                imul esi,81
                movzx eax,xPos
                add esi,eax
            mov bl,levelOneMaze[esi]
                cmp bl,"!"
                je setWallFlag
                jmp return


        l2:
                mov bl,yPos
                dec bl
                movzx esi,bl
                imul esi,82
                movzx eax,xPos
                add esi,eax
                mov bl,levelTwoMaze[esi]
                cmp bl,"!"
                je setWallFlag
                jmp return        


        l3:
                mov bl,yPos
                dec bl
                movzx esi,bl
                imul esi,86
                movzx eax,xPos
                add esi,eax
                mov bl,levelThreeMaze[esi]
                cmp bl,"!"
                je setWallFlag
                jmp return


        setWallFlag:
                        mov wallFlag,1


        return:
                ret
collectWallsUp ENDP


collectWallsDown PROC
        cmp lvlCounter,1
        je l1


        cmp lvlCounter,2
        je l2


        cmp lvlCounter,3
        je l3


        l1:
                mov bl,yPos
                inc bl
                movzx esi,bl
                imul esi,81
                movzx eax,xPos
                add esi,eax
                mov bl,levelOneMaze[esi]
                cmp bl,"!"
                je setWallFlag
                jmp return


        l2:
                mov bl,yPos
                inc bl
                movzx esi,bl
                imul esi,82
                movzx eax,xPos
                add esi,eax
                mov bl,levelTwoMaze[esi]
                cmp bl,"!"
                je setWallFlag
                jmp return


        l3:
                mov bl,yPos
                inc bl
                movzx esi,bl
                imul esi,86
                movzx eax,xPos
                add esi,eax
                mov bl,levelThreeMaze[esi]
                cmp bl,"!"
                je setWallFlag
                jmp return


        setWallFlag:
                mov wallFlag,1


        return:
                ret
collectWallsDown ENDP


collectWallsLeft PROC
        cmp lvlCounter,1
        je l1


        cmp lvlCounter,2
        je l2


        cmp lvlCounter,3
        je l3


        l1:
                mov bl,xPos
                dec bl
                movzx esi,yPos
                imul esi,81
                movzx eax,bl
                add esi,eax
                mov bl,levelOneMaze[esi]
                cmp bl,"!"
                je setWallFlag
                jmp return


        l2:
                mov bl,xPos
                dec bl
                movzx esi,yPos
                imul esi,82
                movzx eax,bl
                add esi,eax
                mov bl,levelTwoMaze[esi]
                cmp bl,"!"
                je setWallFlag
                jmp return


        l3:
                mov bl,xPos
                dec bl
                movzx esi,yPos
                imul esi,86
                movzx eax,bl
                add esi,eax
                mov bl,levelThreeMaze[esi]
                cmp bl,"!"
                je setWallFlag
                jmp return


        setWallFlag:
                mov wallFlag,1


        return:
                ret
collectWallsLeft ENDP


collectWallsRight PROC
        cmp lvlCounter,1
        je l1


        cmp lvlCounter,2
        je l2


        cmp lvlCounter,3
        je l3


        l1:
                mov bl,xPos
                inc bl
                movzx esi,yPos
                imul esi,81
                movzx eax,bl
                add esi,eax
                mov bl,levelOneMaze[esi]
                cmp bl,"!"
                je setWallFlag
                jmp return


        l2:
                mov bl,xPos
                inc bl
                movzx esi,yPos
                imul esi,82
                movzx eax,bl
                add esi,eax
                mov bl,levelTwoMaze[esi]
                cmp bl,"!"
                je setWallFlag
                jmp return


        l3:
                mov bl,xPos
                inc bl
                movzx esi,yPos
                imul esi,86
                movzx eax,bl
                add esi,eax
                mov bl,levelThreeMaze[esi]
                cmp bl,"!"
                je setWallFlag
                jmp return


        setWallFlag:
                mov wallFlag,1


        return:
                ret
collectWallsRight ENDP


; The next two PROCS are used to draw and update player after each move
drawPlayer PROC
        mov eax,black(yellow*16)
        call settextcolor
        mov dl,xPos
        mov dh,yPos
        call Gotoxy
        mov al,"["
        call WriteChar
        mov eax,white(black*16)
        call settextcolor
        ret
drawPlayer ENDP


UpdatePlayer PROC
        mov dl,xPos
        mov dh,yPos
        call Gotoxy
        mov al," "
        call WriteChar
        ret
UpdatePlayer ENDP


;The next 6 PROCS are used to draw and update the ghost everytime they move
drawGhost PROC
        mov eax,lightred(lightred*16)
        call setTextColor


        mov dl,xPosG
        mov dh,yPosG
        call Gotoxy
        mov al," "
        call WriteChar


        mov eax,white(black*16)
        call setTextColor
        ret
drawGhost ENDP


UpdateGhost PROC
        mov dl,xPosG
        mov dh,yPosG
        call Gotoxy
        cmp ghostCoinFlag,1
        je leaveCoinBehind
        cmp ghostFruitFlag,1
        je leaveFruitBehind
        mov al," "
        call WriteChar
        jmp return


        leaveCoinBehind:
                mov eax,yellow
                call setTextColor
                mov eax,0
                mov al,":"
                call WriteChar
                mov ghostCoinFlag,0
                jmp return


        leaveFruitBehind:
                mov eax, lightgreen(lightgreen*16)
                call setTextColor
                mov al,"F"
                call WriteChar
                mov ghostFruitFlag,0
                jmp return


        return:
                mov eax,white(black*16)
                call setTextColor
                ret
UpdateGhost ENDP


drawGhost2 PROC
        mov eax,blue(blue*16)
        call setTextColor


        mov dl,xPosG2
        mov dh,yPosG2
        call Gotoxy
        mov al," "
        call WriteChar


        mov eax,white(black*16)
        call setTextColor
        ret
drawGhost2 ENDP


UpdateGhost2 PROC
        mov dl,xPosG2
        mov dh,yPosG2
        call Gotoxy
        cmp ghostCoinFlag2,1
        je leaveCoinBehind
        cmp ghostFruitFlag2,1
        je leaveFruitBehind
        mov al," "
        call WriteChar
        jmp return


        leaveCoinBehind:
                mov eax,yellow
                call setTextColor
                mov eax,0
                mov al,":"
                call WriteChar
                mov ghostCoinFlag2,0
                jmp return


        leaveFruitBehind:
                mov eax, lightgreen(lightgreen*16)
                call setTextColor
                mov al,"F"
                call WriteChar
                mov ghostFruitFlag2,0
                jmp return


        return:
                mov eax,white(black*16)
                call setTextColor
                ret
UpdateGhost2 ENDP


drawGhost3 PROC
        mov eax,brown(brown*16)
        call setTextColor


        mov dl,xPosG3
        mov dh,yPosG3
        call Gotoxy
        mov al," "
        call WriteChar


        mov eax,white(black*16)
        call setTextColor
        ret
drawGhost3 ENDP


UpdateGhost3 PROC
        mov dl,xPosG3
        mov dh,yPosG3
        call Gotoxy
        cmp ghostCoinFlag3,1
        je leaveCoinBehind
        cmp ghostFruitFlag3,1
        je leaveFruitBehind
        mov al," "
        call WriteChar
        jmp return


        leaveCoinBehind:
                mov eax,yellow
                call setTextColor
                mov eax,0
                mov al,":"
                call WriteChar
                mov ghostCoinFlag3,0
                jmp return


        leaveFruitBehind:
                mov eax, lightgreen(lightgreen*16)
                call setTextColor
                mov al,"F"
                call WriteChar
                mov ghostFruitFlag3,0
                jmp return


        return:
                mov eax,white(black*16)
                call setTextColor
                ret
UpdateGhost3 ENDP


;The following PROCS are used to check collectision of ghost with:
;walls, coins/food, fruits and players
ghostWallColl PROC
        cmp lvlCounter,1
        je l1


        cmp lvlCounter,2
        je l2


        cmp lvlCounter,3
        je l3


        l1:
                movzx esi,nextYPosG
                imul esi,81
                movzx eax,nextXPosG
                add esi,eax
                mov bl,levelOneMaze[esi]
                cmp bl,"!"
                je out1
                jmp return
                out1:
                        mov ghostWallFlag,1
                        jmp return


        l2:
                movzx esi,nextYPosG
                imul esi,82
                movzx eax,nextXPosG
                add esi,eax
                mov bl,levelTwoMaze[esi]
                cmp bl,"!"
                je out2
                jmp return
                out2:
                        mov ghostWallFlag,1
                        jmp return


        l3:
                movzx esi,nextYPosG
                imul esi,86
                movzx eax,nextXPosG
                add esi,eax
                mov bl,levelThreeMaze[esi]
                cmp bl,"!"
                je out3
                jmp return
                out3:
                        mov ghostWallFlag,1
                        jmp return


        return:
                ret


ghostWallColl ENDP


ghostCoinColl PROC
        cmp lvlCounter,1
        je l1


        cmp lvlCounter,2
        je l2


        cmp lvlCounter,3
        je l3


        l1:
                movzx esi,yPosG
                imul esi,81
                movzx eax,xPosG
                add esi,eax
                mov bl,levelOneMaze[esi]
                cmp bl,":"
                je out1
                jmp return
                out1:
                        mov ghostCoinFlag,1
                        jmp return
        l2:
                movzx esi,yPosG
                imul esi,82
                movzx eax,xPosG
                add esi,eax
                mov bl,levelTwoMaze[esi]
                cmp bl,":"
                je out2
                jmp return
                out2:
                        mov ghostCoinFlag,1
                        jmp return
        l3:
                movzx esi,yPosG
                imul esi,86
                movzx eax,xPosG
                add esi,eax
                mov bl,levelThreeMaze[esi]
                cmp bl,":"
                je out3
                jmp return
                out3:
                        mov ghostCoinFlag,1
                        jmp return


        return:
                ret


ghostCoinColl ENDP


ghostFruitColl PROC
        cmp lvlCounter,1
        je l1


        cmp lvlCounter,2
        je l2


        cmp lvlCounter,3
        je l3


        l1:
                movzx esi,yPosG
                imul esi,81
                movzx eax,xPosG
                add esi,eax
                mov bl,levelOneMaze[esi]
                cmp bl,"F"
                je out1
                jmp return
                out1:
                        mov ghostFruitFlag,1
                        jmp return


        l2:
                movzx esi,yPosG
                imul esi,82
                movzx eax,xPosG
                add esi,eax
                mov bl,levelTwoMaze[esi]
                cmp bl,"F"
                je out2
                jmp return
                out2:
                        mov ghostFruitFlag,1
                        jmp return


        l3:
                movzx esi,yPosG
                imul esi,86
                movzx eax,xPosG
                add esi,eax
                mov bl,levelThreeMaze[esi]
                cmp bl,"F"
                je out3
                jmp return
                out3:
                        mov ghostFruitFlag,1
                        jmp return


        return:
                ret


ghostFruitColl ENDP


ghostPlayerColl PROC
        mov bl,xPos
        cmp bl,xPosG
        je checkY


        jmp return
        checkY:
                mov bl,yPos
                cmp bl,yPosG
                je decLives
                jmp return


        decLives:
                dec lives
                mov resetPlayerFlag,1


        return:
                ret
ghostPlayerColl ENDP


ghostWallColl2 PROC
        l3:
                movzx esi,nextYPosG2
                imul esi,86
                movzx eax,nextXPosG2
                add esi,eax
                mov bl,levelThreeMaze[esi]
                cmp bl,"!"
                je out3
                jmp return
                out3:
                        mov ghostWallFlag2,1
                        jmp return


        return:
                ret


ghostWallColl2 ENDP


ghostCoinColl2 PROC
        
        l3:
                movzx esi,yPosG2
                imul esi,86
                movzx eax,xPosG2
                add esi,eax
                mov bl,levelThreeMaze[esi]
                cmp bl,":"
                je out3
                jmp return
                out3:
                        mov ghostCoinFlag2,1
                        jmp return


        return:
                ret


ghostCoinColl2 ENDP


ghostFruitColl2 PROC


        l3:
                movzx esi,yPosG2
                imul esi,86
                movzx eax,xPosG2
                add esi,eax
                mov bl,levelThreeMaze[esi]
                cmp bl,"F"
                je out3
                jmp return
                out3:
                        mov ghostFruitFlag2,1
                        jmp return


        return:
                ret


ghostFruitColl2 ENDP


ghostPlayerColl2 PROC
        mov bl,xPos
        cmp bl,xPosG2
        je checkY


        jmp return
        checkY:
                mov bl,yPos
                cmp bl,yPosG2
                je decLives
                jmp return


        decLives:
                dec lives
                mov resetPlayerFlag,1


        return:
                ret
ghostPlayerColl2 ENDP


ghostWallColl3 PROC
        l3:
                movzx esi,nextYPosG3
                imul esi,86
                movzx eax,nextXPosG3
                add esi,eax
                mov bl,levelThreeMaze[esi]
                cmp bl,"!"
                je out3
                jmp return
                out3:
                        mov ghostWallFlag3,1
                        jmp return


        return:
                ret


ghostWallColl3 ENDP


ghostCoinColl3 PROC
        
        l3:
                movzx esi,yPosG3
                imul esi,86
                movzx eax,xPosG3
                add esi,eax
                mov bl,levelThreeMaze[esi]
                cmp bl,":"
                je out3
                jmp return
                out3:
                        mov ghostCoinFlag3,1
                        jmp return


        return:
                ret


ghostCoinColl3 ENDP


ghostFruitColl3 PROC


        l3:
                movzx esi,yPosG3
                imul esi,86
                movzx eax,xPosG3
                add esi,eax
                mov bl,levelThreeMaze[esi]
                cmp bl,"F"
                je out3
                jmp return
                out3:
                        mov ghostFruitFlag3,1
                        jmp return


        return:
                ret


ghostFruitColl3 ENDP


ghostPlayerColl3 PROC
        mov bl,xPos
        cmp bl,xPosG3
        je checkY


        jmp return
        checkY:
                mov bl,yPos
                cmp bl,yPosG3
                je decLives
                jmp return


        decLives:
                dec lives
                mov resetPlayerFlag,1


        return:
                ret
ghostPlayerColl3 ENDP


;The following PROCS are for the movement of the ghosts
moveGhost PROC
        cmp moveUpFlag,1
        je moveUp


        cmp moveDownFlag,1
        je moveDown
        
        cmp moveLeftFlag,1
        je moveLeft


        cmp moveRightFlag,1
        je moveRight


        moveUp:
                mov moveUpFlag,1
                cmp yPosG,2 
                jl moveUpEnd


                mov bl,xPosG
                mov nextXPosG,bl
                mov bl,yPosG
                dec bl
                mov nextYPosG,bl
                call ghostWallColl
                cmp ghostWallFlag,1
                je moveUpEnd


                call ghostCoinColl
                call ghostFruitColl
                call UpdateGhost
                dec yPosG
                call drawGhost
                jmp return
                moveUpEnd:
                        mov ghostWallFlag,0
                        mov moveUpFlag,0
                        jmp moveRight


        moveDown:
                mov moveDownFlag,1
                cmp yPosG,27 
                jg moveDownEnd


                mov bl,xPosG
                mov nextXPosG,bl
                mov bl,yPosG
                inc bl
                mov nextYPosG,bl
                call ghostWallColl
                cmp ghostWallFlag,1
                je moveDownEnd


                call ghostCoinColl
                call ghostFruitColl
                call UpdateGhost
                inc yPosG
                call drawGhost
                jmp return
                moveDownEnd:
                        mov ghostWallFlag,0
                        mov moveDownFlag,0
                        jmp moveLeft




        moveLeft:
                mov moveLeftFlag,1
                cmp xPosG,3
                jl moveLeftEnd


                mov bl,yPosG
                mov nextYPosG,bl
                mov bl,xPosG
                dec bl
                mov nextXPosG,bl
                call ghostWallColl
                cmp ghostWallFlag,1
                je moveLeftEnd


                call ghostCoinColl
                call ghostFruitColl
                call UpdateGhost
                dec xPosG
                call drawGhost
                jmp return
                moveLeftEnd:
                        mov ghostWallFlag,0
                        mov moveLeftFlag,0
                        jmp generateRandom


                moveRight:
                mov moveRightFlag,1
                cmp xPosG,76 
                jg moveRightEnd


                mov bl,yPosG
                mov nextYPosG,bl
                mov bl,xPosG
                inc bl
                mov nextXPosG,bl
                call ghostWallColl
                cmp ghostWallFlag,1
                je moveRightEnd


                call ghostCoinColl
                call ghostFruitColl
                call UpdateGhost
                inc xPosG
                call drawGhost
                jmp return
                moveRightEnd:
                        mov ghostWallFlag,0
                        mov moveRightFlag,0
                        jmp generateRandom




        generateRandom:
                mov eax,2
                call RandomRange


                cmp al,0
                je moveUp


                cmp al,1
                je moveDown


        return:
                ret


moveGhost ENDP


moveGhost2 PROC
        cmp moveUpFlag2,1
        je moveUp


        cmp moveDownFlag2,1
        je moveDown
        
        cmp moveLeftFlag2,1
        je moveLeft


        cmp moveRightFlag2,1
        je moveRight


        moveUp:
                mov moveUpFlag2,1


                mov bl,xPosG2
                mov nextXPosG2,bl
                mov bl,yPosG2
                dec bl
                mov nextYPosG2,bl
                call ghostWallColl2
                cmp ghostWallFlag2,1
                je moveUpEnd


                call ghostCoinColl2
                call ghostFruitColl2
                call UpdateGhost2
                dec yPosG2
                call drawGhost2
                jmp return
                moveUpEnd:
                        mov ghostWallFlag2,0
                        mov moveUpFlag2,0
                        jmp generateRandom


        moveDown:
                mov moveDownFlag2,1


                mov bl,xPosG2
                mov nextXPosG2,bl
                mov bl,yPosG2
                inc bl
                mov nextYPosG2,bl
                call ghostWallColl2
                cmp ghostWallFlag2,1
                je moveDownEnd


                call ghostCoinColl2
                call ghostFruitColl2
                call UpdateGhost2
                inc yPosG2
                call drawGhost2
                jmp return
                moveDownEnd:
                        mov ghostWallFlag2,0
                        mov moveDownFlag2,0
                        jmp generateRandom




        moveLeft:
                mov moveLeftFlag2,1


                mov bl,yPosG2
                mov nextYPosG2,bl
                mov bl,xPosG2
                dec bl
                mov nextXPosG2,bl
                call ghostWallColl2
                cmp ghostWallFlag2,1
                je moveLeftEnd


                call ghostCoinColl2
                call ghostFruitColl2
                call UpdateGhost2
                dec xPosG2
                call drawGhost2
                jmp return
                moveLeftEnd:
                        mov ghostWallFlag2,0
                        mov moveLeftFlag2,0
                        jmp moveUp


                moveRight:
                mov moveRightFlag2,1


                mov bl,yPosG2
                mov nextYPosG2,bl
                mov bl,xPosG2
                inc bl
                mov nextXPosG2,bl
                call ghostWallColl2
                cmp ghostWallFlag2,1
                je moveRightEnd


                call ghostCoinColl2
                call ghostFruitColl2
                call UpdateGhost2
                inc xPosG2
                call drawGhost2
                jmp return
                moveRightEnd:
                        mov ghostWallFlag2,0
                        mov moveRightFlag2,0
                        jmp moveDown




        generateRandom:
                mov eax,2
                call RandomRange


                cmp al,0
                je moveRight


                cmp al,1
                je moveLeft


        return:
                ret


moveGhost2 ENDP


moveGhost3 PROC
        cmp moveUpFlag3,1
        je moveUp


        cmp moveDownFlag3,1
        je moveDown
        
        cmp moveLeftFlag3,1
        je moveLeft


        cmp moveRightFlag3,1
        je moveRight


        moveUp:
                mov moveUpFlag3,1


                mov bl,xPosG3
                mov nextXPosG3,bl
                mov bl,yPosG3
                dec bl
                mov nextYPosG3,bl
                call ghostWallColl3
                cmp ghostWallFlag3,1
                je moveUpEnd


                call ghostCoinColl3
                call ghostFruitColl3
                call UpdateGhost3
                dec yPosG3
                call drawGhost3
                jmp return
                moveUpEnd:
                        mov ghostWallFlag3,0
                        mov moveUpFlag3,0
                        jmp moveLeft


        moveDown:
                mov moveDownFlag3,1


                mov bl,xPosG3
                mov nextXPosG3,bl
                mov bl,yPosG3
                inc bl
                mov nextYPosG3,bl
                call ghostWallColl3
                cmp ghostWallFlag3,1
                je moveDownEnd


                call ghostCoinColl3
                call ghostFruitColl3
                call UpdateGhost3
                inc yPosG3
                call drawGhost3
                jmp return
                moveDownEnd:
                        mov ghostWallFlag3,0
                        mov moveDownFlag3,0
                        jmp moveRight




        moveLeft:
                mov moveLeftFlag3,1


                mov bl,yPosG3
                mov nextYPosG3,bl
                mov bl,xPosG3
                dec bl
                mov nextXPosG3,bl
                call ghostWallColl3
                cmp ghostWallFlag3,1
                je moveLeftEnd


                call ghostCoinColl3
                call ghostFruitColl3
                call UpdateGhost3
                dec xPosG3
                call drawGhost3
                jmp return
                moveLeftEnd:
                        mov ghostWallFlag3,0
                        mov moveLeftFlag3,0
                        jmp generateRandom


                moveRight:
                mov moveRightFlag3,1


                mov bl,yPosG3
                mov nextYPosG3,bl
                mov bl,xPosG3
                inc bl
                mov nextXPosG3,bl
                call ghostWallColl3
                cmp ghostWallFlag3,1
                je moveRightEnd


                call ghostCoinColl3
                call ghostFruitColl3
                call UpdateGhost3
                inc xPosG3
                call drawGhost3
                jmp return
                moveRightEnd:
                        mov ghostWallFlag3,0
                        mov moveRightFlag3,0
                        jmp generateRandom




        generateRandom:
                mov eax,2
                call RandomRange


                cmp al,0
                je moveUp


                cmp al,1
                je moveDown


        return:
                ret


moveGhost3 ENDP


;The following PROCS are used to check fruit pickup by player from each direction
collectFruitUp PROC
        cmp lvlCounter,1
        je l1


        cmp lvlCounter,2
        je l2


        cmp lvlCounter,3
        je l3


        l1:
                mov bl,yPos
                dec bl
                movzx esi,bl
                imul esi,81
                movzx eax,xPos
                add esi,eax
                mov bl,levelOneMaze[esi]
                cmp bl,"F"
                je incScore1
                jmp return


                incScore1:
                        add score,10
                        mov levelOneMaze[esi],' '
                        jmp return


        l2:
                mov bl,yPos
                dec bl
                movzx esi,bl
                imul esi,82
                movzx eax,xPos
                add esi,eax
                mov bl,levelTwoMaze[esi]
                cmp bl,"F"
                je incScore2
                jmp return


                incScore2:
                        add score,10
                        mov levelTwoMaze[esi],' '
                        jmp return


        l3:
                mov bl,yPos
                dec bl
                movzx esi,bl
                imul esi,86
                movzx eax,xPos
                add esi,eax
                mov bl,levelThreeMaze[esi]
                cmp bl,"F"
                je incScore3
                jmp return


                incScore3:
                        add score,10
                        mov levelThreeMaze[esi],' '
                        jmp return


        return:
                ret
collectFruitUp ENDP


collectFruitDown PROC
        cmp lvlCounter,1
        je l1


        cmp lvlCounter,2
        je l2


        cmp lvlCounter,3
        je l3


        l1:
                mov bl,yPos
                inc bl
                movzx esi,bl
                imul esi,81
                movzx eax,xPos
                add esi,eax
                mov bl,levelOneMaze[esi]
                cmp bl,"F"
                je incScore1
                jmp return


                incScore1:
                        add score,10
                        mov levelOneMaze[esi],' '
                        jmp return


        l2:
                mov bl,yPos
                inc bl
                movzx esi,bl
                imul esi,82
                movzx eax,xPos
                add esi,eax
                mov bl,levelTwoMaze[esi]
                cmp bl,"F"
                je incScore2
                jmp return


                incScore2:
                        add score,10
                        mov levelTwoMaze[esi],' '
                        jmp return


        l3:
                mov bl,yPos
                inc bl
                movzx esi,bl
                imul esi,86
                movzx eax,xPos
                add esi,eax
                mov bl,levelThreeMaze[esi]
                cmp bl,"F"
                je incScore3
                jmp return


                incScore3:
                        add score,10
                        mov levelThreeMaze[esi],' '
                        jmp return


        return:
                ret
collectFruitDown ENDP


collectFruitLeft PROC
        cmp lvlCounter,1
        je l1


        cmp lvlCounter,2
        je l2


        cmp lvlCounter,3
        je l3


        l1:
                mov bl,xPos
                dec bl
                movzx esi,yPos
                imul esi,multiplier
                movzx eax,bl
                add esi,eax
                mov bl,levelOneMaze[esi]
                cmp bl,"F"
                je incScore1
                jmp return


        incScore1:
                add score,10
                mov levelOneMaze[esi],' '
                jmp return


        l2:
                mov bl,xPos
                dec bl
                movzx esi,yPos
                imul esi,multiplier
                movzx eax,bl
                add esi,eax
                mov bl,levelTwoMaze[esi]
                cmp bl,"F"
                je incScore2
                jmp return


        incScore2:
                add score,10
                mov levelTwoMaze[esi],' '
                jmp return


        l3:
                mov bl,xPos
                dec bl
                movzx esi,yPos
                imul esi,86
                movzx eax,bl
                add esi,eax
                mov bl,levelThreeMaze[esi]
                cmp bl,"F"
                je incScore3
                jmp return


        incScore3:
                add score,10
                mov levelThreeMaze[esi],' '
                jmp return


        return:
                ret
collectFruitLeft ENDP


collectFruitRight PROC
        cmp lvlCounter,1
        je l1


        cmp lvlCounter,2
        je l2


        cmp lvlCounter,3
        je l3


        l1:
                mov bl,xPos
                inc bl
                movzx esi,yPos
                imul esi,81
                movzx eax,bl
                add esi,eax
                mov bl,levelOneMaze[esi]
                cmp bl,"F"
                je incScore1
                jmp return


                incScore1:
                        add score,10
                        mov levelOneMaze[esi],' '
                        jmp return


        l2:
                mov bl,xPos
                inc bl
                movzx esi,yPos
                imul esi,82
                movzx eax,bl
                add esi,eax
                mov bl,levelTwoMaze[esi]
                cmp bl,"F"
                je incScore2
                jmp return


                incScore2:
                        add score,10
                        mov levelTwoMaze[esi],' '
                        jmp return


        l3:
                mov bl,xPos
                inc bl
                movzx esi,yPos
                imul esi,86
                movzx eax,bl
                add esi,eax
                mov bl,levelThreeMaze[esi]
                cmp bl,"F"
                je incScore3
                jmp return


                incScore3:
                        add score,10
                        mov levelThreeMaze[esi],' '
                        jmp return


        return:
                ret
collectFruitRight ENDP


;This PROC is to draw fruit on map
drawFruit PROC
        mov eax, lightgreen(lightgreen*16)
        call setTextColor
        mov dl,fruitXPos
        mov dh,fruitYPos
        call Gotoxy
        mov al,'F'
        call writeChar
        mov eax,white(black*16)
        call setTextColor
        ret
drawFruit ENDP


;This PROC generates fruit 
generateFruit PROC


        cmp lvlCounter,2
        je l2


        cmp lvlCounter,3
        je l3


        l2:
                cmp score,550
                jg createFruit
                jmp return


                createFruit:
                        mov fruitFlag,1
                        mov eax,2
                        call RandomRange
                        cmp al,0
                        je fruitPos1
                        jmp fruitPos2


                fruitPos1:
                        mov esi,25
                        imul esi,82
                        add esi,40
                        mov levelTwoMaze[esi],"F"
                        mov fruitYPos,25
                        call DrawFruit
                        jmp return


                fruitPos2:
                        mov esi,15
                        imul esi,82
                        add esi,40
                        mov levelTwoMaze[esi],"F"
                        mov fruitYPos,15
                        call DrawFruit
                        jmp return


        l3:
                cmp score,1000
                jg createFruit2
                jmp return


                createFruit2:
                        mov fruitFlag,1
                        mov eax,2
                        call RandomRange
                        cmp al,0
                        je fruitPos3
                        jmp fruitPos4


                fruitPos3:
                        mov esi,13
                        imul esi,86
                        add esi,30
                        mov levelThreeMaze[esi],"F"
                        mov fruitXPos,30
                        mov fruitYPos,13
                        call DrawFruit
                        jmp return


                fruitPos4:
                        mov esi,13
                        imul esi,86
                        add esi,54
                        mov levelThreeMaze[esi],"F"
                        mov fruitXPos,54
                        mov fruitYPos,13
                        call DrawFruit
                        jmp return


        return:
                ret
generateFruit ENDP


;This PROC displays the menu screen and the title of the game 
displayTitle PROC
        mov dl,24
        mov dh,0
        call Gotoxy
        mov eax,magenta
        call setTextColor
        mov ecx,248
        mov esi,0
        mov eax,0
        L1:
                mov al,titleScreen[esi]
                cmp al,','
                je newLine
                call writeChar
                inc esi
                loop L1
        jmp displayMenu
        newLine:
                inc dh
                call crlf
                mov dl,24
                call Gotoxy
                inc esi
                loop L1


        


        displayMenu:
                mov eax,lightgreen
                call setTextColor
            mov dl,40
                add dh,2
                call Gotoxy
                mWrite "What's your name: "
                mov ecx,255
                lea edx,playerName
                call readstring


                mov dl,40
                mov dh,8
                call Gotoxy
                mWrite "Enter [s] to start the game: "


                mov dl,40
                mov dh,9
                call Gotoxy
                mWrite "Enter [i] to read the instructions: "


                mov dl,40
                mov dh,10
                call Gotoxy
                mWrite "Enter [e] to exit the game :)"
                mWrite "--> "
                


                call ReadChar
                cmp al,'s'
                je return


                cmp al,'i'
                je instructionScreen


                cmp al,'e'
                je exitGame


        instructionScreen:
                call instructions
                jmp return


        return:
                mov eax,white(black*16)
                call setTextColor
                ret


        exitGame:
                mov eax,white(black*16)
                call setTextColor
                exit


displayTitle ENDP


;The following 3 PROCS are used to draw the maze of each level
drawLevelOneMaze PROC
        mov ecx,2429
        mov esi,0
        mov ebx,0
        L1:
                mov bl,levelOneMaze[esi]
                cmp bl,':'
                je setCoinColor
                cmp bl,'!'
                je setInnerWallColor
                continue:
                        cmp bl,','
                        je newLine
                        mov al,bl
                        call writeChar
                        mov eax,yellow+(blue*16)
                        call setTextColor
                        inc esi
                        loop L1
        jmp return


        setCoinColor:
                mov eax,yellow
                call setTextColor
                jmp continue


        setInnerWallColor:
                mov eax,lightblue(lightblue*16)
                call setTextColor
                jmp continue


        newLine:
                call crlf
                inc esi
                loop L1
        return:
                ret
drawLevelOneMaze ENDP


drawLevelTwoMaze PROC
        mov ecx,2459
        mov esi,0
        mov ebx,0
        L1:
                mov bl,levelTwoMaze[esi]
                cmp bl,':'
                je setCoinColor
                cmp bl,'!'
                je setInnerWallColor
                continue:
                        cmp bl,','
                        je newLine
                        mov al,bl
                        call writeChar
                        mov eax,white(black*16)
                        call setTextColor
                        inc esi
                        loop L1
        jmp return


        setCoinColor:
                mov eax,yellow
                call setTextColor
                jmp continue


        setInnerWallColor:
                mov eax,magenta(magenta*16)
                call setTextColor
                jmp continue


        newLine:
                call crlf
                inc esi
                loop L1
        return:
                ret
drawLevelTwoMaze ENDP


drawLevelThreeMaze PROC
        mov ecx,2491
        mov esi,0
        mov ebx,0
        L1:
                mov bl,levelThreeMaze[esi]
                cmp bl,':'
                je setCoinColor
                cmp bl,'!'
                je setInnerWallColor
                continue:
                        cmp bl,','
                        je newLine
                        mov al,bl
                        call writeChar
                        mov eax,white(black*16)
                        call setTextColor
                        inc esi
                        loop L1
        jmp return


        setCoinColor:
                mov eax,yellow
                call setTextColor
                jmp continue


        setInnerWallColor:
                mov eax,red(red*16)
                call setTextColor
                jmp continue


        newLine:
                call crlf
                inc esi
                loop L1
        return:
                ret
drawLevelThreeMaze ENDP


;The next 3 PROCS are used to check whether there is any food left to eat in maze or not
checkCoinsForLevelUp PROC
        mov ecx,2429
        mov esi,0
        mov ebx,0
        L1:
                mov bl,levelOneMaze[esi]
                cmp bl,':'
                je setCoinFlag
                inc esi
                loop L1


        jmp return
        setCoinFlag:
                mov coinFlag,1
                ret


        return:
                mov coinFlag,0
                ret


checkCoinsForLevelUp ENDP


checkCoinsForLevelUp2 PROC
        mov ecx,2459
        mov esi,0
        mov ebx,0
        L1:
                mov bl,levelTwoMaze[esi]
                cmp bl,':'
                je setCoinFlag
                inc esi
                loop L1


        jmp return
        setCoinFlag:
                mov coinFlag,1
                ret


        return:
                mov coinFlag,0
                ret
checkCoinsForLevelUp2 ENDP


checkCoinsForLevelUp3 PROC
        mov ecx,2491
        mov esi,0
        mov ebx,0
        L1:
                mov bl,levelThreeMaze[esi]
                cmp bl,':'
                je setCoinFlag
                inc esi
                loop L1


        jmp return
        setCoinFlag:
                mov coinFlag,1
                ret


        return:
                mov coinFlag,0
                ret
checkCoinsForLevelUp3 ENDP


;This PROC displays game over screen
gameOverScreen PROC
        mov dl,24
        mov dh,0
        call Gotoxy
        mov eax,magenta
        call setTextColor
        mov ecx,248
        mov esi,0
        mov eax,0
        L1:
                mov al,titleScreen[esi]
                cmp al,','
                je newLine
                call writeChar
                inc esi
                loop L1
        jmp displayMenu
        newLine:
                inc dh
                call crlf
                mov dl,24
                call Gotoxy
                inc esi
                loop L1


        displayMenu:
                mov eax,cyan
                call setTextColor
            mov dl,39
                add dh,2
                call Gotoxy
                mWrite "Player Name: "
                mov edx,offset playerName
                call writeString


                mov dl,45
                mov dh,7
                call Gotoxy
                mWrite "Score: "
                movsx eax,score
                call writeDec


                mov dl,40
                mov dh,9
                call Gotoxy
                mWrite " Press e to exit"
                call ReadKey


                cmp al,'e'
                je exitGame


        return:
                mov eax,white(black*16)
                call setTextColor
                ret


        exitGame:
                mov eax,white(black*16)
                call setTextColor
                exit


gameOverScreen ENDP


;This PROC displays the instruction screen
instructions PROC
        call clrscr
        mov dl,24
        mov dh,0
        call Gotoxy
        mov eax,magenta
        call setTextColor
        mov ecx,248
        mov esi,0
        mov eax,0
        L1:
                mov al,titleScreen[esi]
                cmp al,','
                je newLine
                call writeChar
                inc esi
                loop L1
        jmp displayMenu
        newLine:
                inc dh
                call crlf
                mov dl,24
                call Gotoxy
                inc esi
                loop L1


        displayMenu:
                mov eax,cyan
                call setTextColor
            mov dl,42
                add dh,2
                call Gotoxy
                mWrite "Movement Keys "


                mov dl,41
                mov dh,7
                call Gotoxy
                mWrite "'w' to move up "


                mov dl,41
                mov dh,8
                call Gotoxy
                mWrite "'s' to move down "


                mov dl,41
                mov dh,9
                call Gotoxy
                mWrite "'d' to move right "


                mov dl,41
                mov dh,10
                call Gotoxy
                mWrite "'a' to move left "


                mov dl,41
                mov dh,11
                call Gotoxy
                mWrite "'p' to pause game"


                mov dl,41
                mov dh,12
                call Gotoxy
                mWrite "'r' to resume game"


                mov dl,24
                mov dh,13
                call Gotoxy
                mWrite "Click anywhere on the terminal to pause"


                mov dl,32
                mov dh,14
                call Gotoxy
                mWrite "To resume press: w/a/s/d"


                mov dl,29
                mov dh,16
                call Gotoxy
                mWrite "Press 's' to go back to menu or 'e' to exit"


                call ReadChar
                cmp al,'s'
                je goBack


                cmp al,'e'
                je exitGame
                jmp exitGame


                goBack:
                        ret


                exitGame:
                        exit
instructions ENDP


END MAIN
