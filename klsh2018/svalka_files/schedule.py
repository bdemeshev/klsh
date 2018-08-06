#! /usr/bin/env python
# -*- coding: utf-8 -*-

import pickle
latex2greek = {}

latex2greek[ r'$\alpha$' ] = 'α'
latex2greek[ r'$\beta$' ] = 'β'
latex2greek[ r'$\gamma$' ] = 'γ'
latex2greek[ r'$\delta$' ] = 'δ'
latex2greek[ r'$\varepsilon$' ] = 'ε'
latex2greek[ r'$\theta$' ] = 'θ'
latex2greek[ r'$\iota$' ] = 'ι'
latex2greek[ r'$\kappa$' ] = 'κ'
latex2greek[ r'$\lambda$' ] = 'λ'
latex2greek[ r'$\mu$' ] = 'μ'
latex2greek[ r'$\xi$' ] = 'ξ'
latex2greek[ r'$\eta$' ] = 'η'
latex2greek[ r'$o$' ] = 'ο'
latex2greek[ r'$\pi$' ] = 'π'
latex2greek[ r'$\rho$' ] = 'ρ'
latex2greek[ r'$\sigma$' ] = 'σ'
latex2greek[ r'$\tau$' ] = 'τ'
latex2greek[ r'$\varphi$' ] = 'φ'
latex2greek[ r'$\omega$' ] = 'ω'
latex2greek[ r'$\chi$' ] = 'χ'
#latex2greek[ r'$\upsilon$' ] = 'υ'
latex2greek[ r'$\psi$' ] = 'ψ'
latex2greek[ r'$\nu$' ] = 'ν'

year = 2018

schedule = []

#####################
#### Первый тур: ####
#####################

game_1 = {

    'DATE' : '19 июля 2014 года',

    'MATCHES' : [
    
    { 'TEAM1' : r'$\alpha$', 'TEAM2' : r'$\beta$', 'ROOM' : '1.1',
      'SENIORJUDGE' : 'Саша АБАНОВ', 'JUDGES' : 'Ренат СИБГАТУЛИН, Лёша СМОЛЯНИНОВ, Маша СЕГИНЁВА',
      'SCORE1' : 2, 'SCORE2' : 5 },
    
    { 'TEAM1' : r'$\gamma$', 'TEAM2' : r'$\delta$', 'ROOM' : '1.2',
      'SENIORJUDGE' : 'Михаил САДОВСКИЙ', 'JUDGES' : 'Сева ЩИПУНОВ, Лиза ТЕЙМУРОВА, Ваня ХАРИТОНОВ',
      'SCORE1' : 3, 'SCORE2' : 1 },
    
    { 'TEAM1' : r'$\varepsilon$', 'TEAM2' : r'$\theta$', 'ROOM' : '2.1',
      'SENIORJUDGE' : 'Артём АБАНОВ', 'JUDGES' : 'Саша МЕНЩИКОВ, Олег ЗОЛОТОВ, Тима ШУМИЛОВ',
      'SCORE1' : 7, 'SCORE2' : 6 },
    
    { 'TEAM1' : r'$\iota$', 'TEAM2' : r'$\kappa$', 'ROOM' : '2.2',
      'SENIORJUDGE' : 'Сергей ЛАМЗИН', 'JUDGES' : 'Егор ЮЩЕНКО, Антон ШЕЙКИН, Влад ЛЕОНОВ',
      'SCORE1' : 1, 'SCORE2' : 7 },
    
    { 'TEAM1' : r'$\lambda$', 'TEAM2' : r'$\mu$', 'ROOM' : '3.1',
      'SENIORJUDGE' : 'Ваня АДО', 'JUDGES' : 'Даня КАЗАК, Наташа ХАРУК, Женя МУХИНА',
      'SCORE1' : 2, 'SCORE2' : 2 },
    
    { 'TEAM1' : r'$\chi$', 'TEAM2' : r'$o$', 'ROOM' : 'Б-1',
      'SENIORJUDGE' : 'Вика ЛУКОВСКАЯ', 'JUDGES' : 'Сергей ВЫБОЙЩИКОВ, Катя СЕБКО, Вова КРАСНОБАЕВ',
      'SCORE1' : 0, 'SCORE2' : 2 },
    
    { 'TEAM1' : r'$\pi$', 'TEAM2' : r'$\rho$', 'ROOM' : 'Палатка Ферми',
      'SENIORJUDGE' : 'Лев КАМИНСКИЙ', 'JUDGES' : 'Андрей КЕЧИН, Федя КАЛИНИН, Дима КИСЕЛЁВ',
      'SCORE1' : 4, 'SCORE2' : 5 },
    
    { 'TEAM1' : r'$\eta$', 'TEAM2' : r'$\tau$', 'ROOM' : 'Палатка Эйлера',
      'SENIORJUDGE' : 'Никита АСТРАХАНЦЕВ', 'JUDGES' : 'Ника ИЛЬЯНЕНКО, Никита КОЛЕСНИКОВ, Лиза ЕФИМОВА',
      'SCORE1' : -2, 'SCORE2' : 9 },
    
    { 'TEAM1' : r'$\psi$', 'TEAM2' : r'$\omega$', 'ROOM' : 'Палатка Пржевальского',
      'SENIORJUDGE' : 'Фил БАРОН', 'JUDGES' : 'Боря ДЕМЕШЕВ, Игорь ПОВАЖНЮК',
      'SCORE1' : 6, 'SCORE2' : -1 },

    { 'TEAM1' : r'$\sigma$', 'TEAM2' : r'$\varphi$',
          'ROOM' : 'Палатка Канта',
          'SENIORJUDGE' : 'Ренат СИБГАТУЛИН',
          'JUDGES' : 'Лев КАМИНСКИЙ, Андрей КЕЧИН, Лиза ТЕЙМУРОВА',
          'SCORE1' : 2, 'SCORE2' : 1 }

    ]

    }

schedule.append( game_1 )

game_2 = {

    'DATE' : '22 июля 2014 года',

    'MATCHES' : [
    
        { 'TEAM1' : r'$\gamma$', 'TEAM2' : r'$\eta$',
          'ROOM' : '1.1',
          'SENIORJUDGE' : 'Михаил САДОВСКИЙ',
          'JUDGES' : 'Лев КАМИНСКИЙ, Даниил КАЗАК, Лёша СМОЛЯНИНОВ',
          'SCORE1' : 0, 'SCORE2' : 0 },
    
        { 'TEAM1' : r'$\psi$', 'TEAM2' : r'$\chi$',
          'ROOM' : '1.2',
          'SENIORJUDGE' : 'Саша АБАНОВ',
          'JUDGES' : 'Маша СЕГИНЁВА, Сергей ВЫБОЙЩИКОВ, Тима ШУМИЛОВ',
          'SCORE1' : 6, 'SCORE2' : 2 },
    
        { 'TEAM1' : r'$\lambda$', 'TEAM2' : r'$\upsilon$',
          'ROOM' : '2.1',
          'SENIORJUDGE' : 'Артём АБАНОВ',
          'JUDGES' : 'Егор ЮЩЕНКО, Лиза ЕФИМОВА, Дима КИСЕЛЁВ',
          'SCORE1' : 3, 'SCORE2' : 5 },
    
        { 'TEAM1' : r'$\beta$', 'TEAM2' : r'$\tau$',
          'ROOM' : '2.2',
          'SENIORJUDGE' : 'Серёжа ЛАМЗИН',
          'JUDGES' : 'Олег ЗОЛОТОВ, Андрей КЕЧИН, Влад ЛЕОНОВ',
          'SCORE1' : 3, 'SCORE2' : 6 },
    
        { 'TEAM1' : r'$\varepsilon$', 'TEAM2' : r'$\varphi$',
          'ROOM' : 'USS Enterprise',
          'SENIORJUDGE' : 'Ваня АДО',
          'JUDGES' : 'Антон ШЕЙКИН, Ваня ХАРИТОНОВ, Федя КАЛИНИН',
          'SCORE1' : 2, 'SCORE2' : 5 },
    
        { 'TEAM1' : r'$\delta$', 'TEAM2' : r'$\rho$',
          'ROOM' : 'Палатка Ферми',
          'SENIORJUDGE' : 'Никита АСТРАХАНЦЕВ',
          'JUDGES' : 'Борис ДЕМЕШЕВ, Никита КОЛЕСНИКОВ, Катя СЕБКО',
          'SCORE1' : 6, 'SCORE2' : 3 },
    
        { 'TEAM1' : r'$\pi$', 'TEAM2' : r'$\sigma$',
          'ROOM' : 'Палатка Эйлера',
          'SENIORJUDGE' : 'Лада БУРМАК',
          'JUDGES' : 'Фил БАРОН, Ника ИЛЬЯНЕНКО, Лиза ТЕЙМУРОВА',
          'SCORE1' : -1, 'SCORE2' : 5 },
    
        { 'TEAM1' : r'$\alpha$', 'TEAM2' : r'$o$',
          'ROOM' : 'Палатка Канта',
          'SENIORJUDGE' : 'Саша МЕНЩИКОВ',
          'JUDGES' : 'Вова КРАСНОБАЕВ, Саша СЕГИНЁВ, Наташа ХАРУК',
          'SCORE1' : 5, 'SCORE2' : 2 },
    
        { 'TEAM1' : r'$\iota$', 'TEAM2' : r'$\omega$',
          'ROOM' : 'Палатка Пржевальского',
          'SENIORJUDGE' : 'Вика ЛУКОВСКАЯ',
          'JUDGES' : 'Ренат СИБГАТУЛИН, Игорь ПОВАЖНЮК',
          'SCORE1' : 0, 'SCORE2' : 3 }

        ]
        
    }

#schedule.append( game_2 )

game_3 = {

    'DATE' : '25 июля 2011 года',

    'MATCHES' : [
    
        { 'TEAM1' : r'$\psi$', 'TEAM2' : r'$\tau$',
          'ROOM' : 'ВК',
          'SENIORJUDGE' : 'Артём АБАНОВ',
          'JUDGES' : ' Маша СЕГИНЁВА, Лев КАМИНСКИЙ, Никита КОЛЕСНИКОВ',
          'SCORE1' : 6, 'SCORE2' : 0 },
    
        { 'TEAM1' : r'$\upsilon$', 'TEAM2' : r'$\gamma$',
          'ROOM' : '1.1',
          'SENIORJUDGE' : 'Саша АБАНОВ',
          'JUDGES' : 'Ника ИЛЬЯНЕНКО, Лиза ЕФИМОВА, Катя СЕБКО',
          'SCORE1' : -1, 'SCORE2' : 0 },
    
        { 'TEAM1' : r'$\eta$', 'TEAM2' : r'$\delta$',
          'ROOM' : '1.2',
          'SENIORJUDGE' : 'Вика ЛУКОВСКАЯ',
          'JUDGES' : 'Олег ЗОЛОТОВ, Ваня ХАРИТОНОВ, Лиза ТЕЙМУРОВА',
          'SCORE1' : -1, 'SCORE2' : 0 },
    
        { 'TEAM1' : r'$\sigma$', 'TEAM2' : r'$\varphi$',
          'ROOM' : '2.1',
          'SENIORJUDGE' : 'Иван АДО',
          'JUDGES' : 'Егор ЮЩЕНКО, Митя КИСЕЛЁВ, Тима ШУМИЛОВ',
          'SCORE1' : 1, 'SCORE2' : 0 },
    
        { 'TEAM1' : r'$\chi$', 'TEAM2' : r'$\alpha$',
          'ROOM' : '2.2',
          'SENIORJUDGE' : 'Лада БУРМАК',
          'JUDGES' : 'Ренат СИБГАТУЛИН, Даня КАЗАК, Лёша СМОЛЯНИНОВ',
          'SCORE1' : 0, 'SCORE2' : 0 },
    
        { 'TEAM1' : r'$\lambda$', 'TEAM2' : r'$\beta$',
          'ROOM' : 'Палатка Канта',
          'SENIORJUDGE' : 'Серёжа ЛАМЗИН',
          'JUDGES' : 'Миша САДОВСКИЙ, Сева ЩИПУНОВ, Федя КАЛИНИН',
          'SCORE1' : 0, 'SCORE2' : 0 },
    
        { 'TEAM1' : r'$\omega$', 'TEAM2' : r'$\varepsilon$',
          'ROOM' : 'Палатка Ферми',
          'SENIORJUDGE' : 'Борис ДЕМЕШЕВ',
          'JUDGES' : 'Вова КРАСНОБАЕВ, Саша СЕГИНЁВ, Игорь ПОВАЖНЮК',
          'SCORE1' : 7, 'SCORE2' : 0 },
    
        { 'TEAM1' : r'$\rho$', 'TEAM2' : r'$o$',
          'ROOM' : 'USS Enterprise (Б1)',
          'SENIORJUDGE' : 'Фил БАРОН',
          'JUDGES' : 'Антон ШЕЙКИН, Андрей КЕЧИН',
          'SCORE1' : -4, 'SCORE2' : 0 },
    
        { 'TEAM1' : r'$\pi$', 'TEAM2' : r'$\iota$',
          'ROOM' : 'Палатка Пржевальского',
          'SENIORJUDGE' : 'Саша МЕНЩИКОВ',
          'JUDGES' : 'Никита АСТРАХАНЦЕВ, Сергей ВЫБОЙЩИКОВ, Влад ЛЕОНОВ',
          'SCORE1' : 1, 'SCORE2' : 0 }

        ]

    }

#schedule.append( game_3 )

game_4 = {

    'DATE' : '28 июля 2014 года',

    'MATCHES' : [
    
        { 'TEAM1' : r'$\psi$', 'TEAM2' : r'$\gamma$',
          'ROOM' : 'ВК',
          'SENIORJUDGE' : 'Андрей КЕЧИН',
          'JUDGES' : 'Саша АБАНОВ, Михаил САДОВСКИЙ, Маша СЕГИНЁВА',
          'SCORE1' : 1, 'SCORE2' : 0 },
    
        { 'TEAM1' : r'$\delta$', 'TEAM2' : r'$\sigma$',
          'ROOM' : '1.1',
          'SENIORJUDGE' : 'Никита АСТРАХАНЦЕВ',
          'JUDGES' : 'Артём АБАНОВ, Даниил КАЗАК, Федя КАЛИНИН',
          'SCORE1' : -6, 'SCORE2' : 0 },
    
        { 'TEAM1' : r'$\tau$', 'TEAM2' : r'$\upsilon$',
          'ROOM' : '1.2',
          'SENIORJUDGE' : 'Вова КРАСНОБАЕВ',
          'JUDGES' : 'Лада БУРМАК, Никита КОЛЕСНИКОВ, Катя СЕБКО',
          'SCORE1' : -1, 'SCORE2' : 0 },
    
        { 'TEAM1' : r'$\omega$', 'TEAM2' : r'$\eta$',
          'ROOM' : '2.1',
          'SENIORJUDGE' : 'Ника ИЛЬЯНЕНКО',
          'JUDGES' : 'Ваня АДО, Ваня ХАРИТОНОВ, Ната ХАРУК',
          'SCORE1' : 2, 'SCORE2' : 0 },
    
        { 'TEAM1' : r'$\chi$', 'TEAM2' : r'$\beta$',
          'ROOM' : '2.2',
          'SENIORJUDGE' : 'Ренат СИБГАТУЛИН',
          'JUDGES' : 'Сергей ЛАМЗИН, Саша СЕГИНЁВ, Лиза ТЕЙМУРОВА',
          'SCORE1' : -2, 'SCORE2' : 0 },
    
        { 'TEAM1' : r'$\alpha$', 'TEAM2' : r'$\lambda$',
          'ROOM' : 'USS Enterprise',
          'SENIORJUDGE' : 'Лиза ЕФИМОВА',
          'JUDGES' : 'Саша МЕНЩИКОВ, Олег ЗОЛОТОВ, Лёша СМОЛЯНИНОВ',
          'SCORE1' : 1, 'SCORE2' : 0 },
    
        { 'TEAM1' : r'$\varphi$', 'TEAM2' : r'$o$',
          'ROOM' : 'Палатка Канта',
          'SENIORJUDGE' : 'Митя КИСЕЛЁВ',
          'JUDGES' : 'Фил БАРОН, Лев КАМИНСКИЙ, Влад ЛЕОНОВ',
          'SCORE1' : 10, 'SCORE2' : 0 },
    
        { 'TEAM1' : r'$\pi$', 'TEAM2' : r'$\varepsilon$',
          'ROOM' : 'Палатка Пржевальского',
          'SENIORJUDGE' : 'Сева ЩИПУНОВ',
          'JUDGES' : 'Вика ЛУКОВСКАЯ, Женя БУРОВСКИЙ, Тима ШУМИЛОВ',
          'SCORE1' : -1, 'SCORE2' : 0 },
    
        { 'TEAM1' : r'$\rho$', 'TEAM2' : r'$\iota$',
          'ROOM' : 'Палатка Ферми',
          'SENIORJUDGE' : 'Егор ЮЩЕНКО',
          'JUDGES' : 'Борис ДЕМЕШЕВ, Антон ШЕЙКИН',
          'SCORE1' : 3, 'SCORE2' : 0 }

        ]

    }

#schedule.append( game_4 )

game_5 = {

    'DATE' : '31 августа 2014 года',

    'MATCHES' : [
    
        { 'TEAM1' : r'$\psi$', 'TEAM2' : r'$\sigma$',
          'ROOM' : 'ВК',
          'SENIORJUDGE' : 'Саша АБАНОВ',
          'JUDGES' : 'Лада БУРМАК, Сева ЩИПУНОВ, Тима ШУМИЛОВ',
          'SCORE1' : -5, 'SCORE2' : 0 },
    
        { 'TEAM1' : r'$\upsilon$', 'TEAM2' : r'$\omega$',
          'ROOM' : '1.1',
          'SENIORJUDGE' : 'Михаил САДОВСКИЙ',
          'JUDGES' : 'Ника ИЛЬЯНЕНКО, Никита КОЛЕСНИКОВ, Маша СЕГИНЁВА',
          'SCORE1' : 7, 'SCORE2' : 0 },
    
        { 'TEAM1' : r'$\alpha$', 'TEAM2' : r'$\beta$',
          'ROOM' : '1.2',
          'SENIORJUDGE' : 'Артём АБАНОВ',
          'JUDGES' : 'Вова КРАСНОБАЕВ, Дима КИСЕЛЁВ, Влад ЛЕОНОВ',
          'SCORE1' : -5, 'SCORE2' : 0 },
    
        { 'TEAM1' : r'$\gamma$', 'TEAM2' : r'$\delta$',
          'ROOM' : '2.1',
          'SENIORJUDGE' : 'Вика ЛУКОВСКАЯ',
          'JUDGES' : 'Ренат СИБГАТУЛИН, Андрей КЕЧИН, Федя КАЛИНИН',
          'SCORE1' : 5, 'SCORE2' : 0 },
    
        { 'TEAM1' : r'$\varphi$', 'TEAM2' : r'$\tau$',
          'ROOM' : '2.2',
          'SENIORJUDGE' : 'Лев КАМИНСКИЙ',
          'JUDGES' : 'Фил БАРОН, Саша СЕГИНЁВ, Лиза ТЕЙМУРОВА',
          'SCORE1' : 3, 'SCORE2' : 0 },
    
        { 'TEAM1' : r'$\chi$', 'TEAM2' : r'$\lambda$',
          'ROOM' : 'USS Enterprise',
          'SENIORJUDGE' : 'Иван АДО',
          'JUDGES' : 'Антон ШЕЙКИН, Катя СЕБКО',
          'SCORE1' : 6, 'SCORE2' : 0 },
    
        { 'TEAM1' : r'$\eta$', 'TEAM2' : r'$\varepsilon$',
          'ROOM' : 'Палатка Канта',
          'SENIORJUDGE' : 'Максим ЩЕРБАКОВ',
          'JUDGES' : 'Олег ЗОЛОТОВ, Даниил КАЗАК, Игорь ПОВАЖНЮК',
          'SCORE1' : 2, 'SCORE2' : 0 },
    
        { 'TEAM1' : r'$\pi$', 'TEAM2' : r'$\rho$',
          'ROOM' : 'Палатка Ферми',
          'SENIORJUDGE' : 'Саша МЕНЩИКОВ',
          'JUDGES' : 'Женя БУРОВСКИЙ, Егор ЮЩЕНКО, Лёша СМОЛЯНИНОВ',
          'SCORE1' : -5, 'SCORE2' : 0 },
    
        { 'TEAM1' : r'$o$', 'TEAM2' : r'$\iota$',
          'ROOM' : 'Палатка Пржевальского',
          'SENIORJUDGE' : 'Никита АСТРАХАНЦЕВ',
          'JUDGES' : 'Лиза ЕФИМОВА, Ваня ХАРИТОНОВ, Ната ХАРУК',
          'SCORE1' : 3, 'SCORE2' : 0 }

        ]

    }

#schedule.append( game_5 )

game_6 = {

    'DATE' : '4 августа 2011 года',

    'MATCHES' : [
    
        { 'TEAM1' : r'$\sigma$', 'TEAM2' : r'$\upsilon$',
          'ROOM' : 'ВК',
          'SENIORJUDGE' : 'Вова КРАСНОБАЕВ',
          'JUDGES' : 'Саша АБАНОВ, Даниил КАЗАК, Маша СЕГИНЁВА',
          'SCORE1' : 3, 'SCORE2' : -1 },
    
        { 'TEAM1' : r'$\psi$', 'TEAM2' : r'$\beta$',
          'ROOM' : '1.1',
          'SENIORJUDGE' : 'Лиза ЕФИМОВА',
          'JUDGES' : 'Артём АБАНОВ, Ваня СМОЛЯР, Лёша СМОЛЯНИНОВ',
          'SCORE1' : 5, 'SCORE2' : 2 },
    
        { 'TEAM1' : r'$\gamma$', 'TEAM2' : r'$\omega$',
          'ROOM' : '1.2',
          'SENIORJUDGE' : 'Ника ИЛЬЯНЕНКО',
          'JUDGES' : 'Михаил САДОВСКИЙ, Вика ЛУКОВСКАЯ, Влад ЛЕОНОВ',
          'SCORE1' : 5, 'SCORE2' : 3 },
    
        { 'TEAM1' : r'$\varphi$', 'TEAM2' : r'$\eta$',
          'ROOM' : '2.1',
          'SENIORJUDGE' : 'Никита АСТРАХАНЦЕВ',
          'JUDGES' : 'Лада БУРМАК, Женя БУРОВСКИЙ, Тима ШУМИЛОВ',
          'SCORE1' : 5, 'SCORE2' : 2 },
    
        { 'TEAM1' : r'$\chi$', 'TEAM2' : r'$\delta$',
          'ROOM' : '2.2',
          'SENIORJUDGE' : 'Егор ЮЩЕНКО',
          'JUDGES' : 'Ваня АДО, Олег ЗОЛОТОВ, Игорь ПОВАЖНЮК',
          'SCORE1' : 5, 'SCORE2' : 1 },
    
        { 'TEAM1' : r'$\alpha$', 'TEAM2' : r'$\rho$',
          'ROOM' : 'Палатка Ферми',
          'SENIORJUDGE' : 'Митя КИСЕЛЁВ',
          'JUDGES' : 'Сергей ЛАМЗИН, Фил БАРОН, Федя КАЛИНИН',
          'SCORE1' : 5, 'SCORE2' : 4 },
    
        { 'TEAM1' : r'$\tau$', 'TEAM2' : r'$o$',
          'ROOM' : 'Палатка Канта',
          'SENIORJUDGE' : 'Ренат СИБГАТУЛИН',
          'JUDGES' : 'Лев КАМИНСКИЙ, Андрей КЕЧИН, Лиза ТЕЙМУРОВА',
          'SCORE1' : 2, 'SCORE2' : 1 },
    
        { 'TEAM1' : r'$\lambda$', 'TEAM2' : r'$\pi$',
          'ROOM' : 'USS Enterprise',
          'SENIORJUDGE' : 'Сева ЩИПУНОВ',
          'JUDGES' : 'Саша МЕНЩИКОВ, Антон ШЕЙКИН, Катя СЕБКО',
          'SCORE1' : 3, 'SCORE2' : -1 },
    
        { 'TEAM1' : r'$\varepsilon$', 'TEAM2' : r'$\iota$',
          'ROOM' : 'Палатка Пржевальского',
          'SENIORJUDGE' : 'Никита КОЛЕСНИКОВ',
          'JUDGES' : 'Максим ЩЕРБАКОВ, Ваня ХАРИТОНОВ, Ната ХАРУК',
          'SCORE1' : 2, 'SCORE2' : -2 },

        { 'TEAM1' : r'$\sigma$', 'TEAM2' : r'$\varphi$',
          'ROOM' : 'Палатка Канта',
          'SENIORJUDGE' : 'Ренат СИБГАТУЛИН',
          'JUDGES' : 'Лев КАМИНСКИЙ, Андрей КЕЧИН, Лиза ТЕЙМУРОВА',
          'SCORE1' : 2, 'SCORE2' : 1 }

        ]

    }

#schedule.append( game_6 )

#################
#### Свалка: ####
#################

svalka_date = '4 августа 2018 года'

empty_svalka = [

    { 'TEAM' : r'$\alpha$',
      'JUDGE' : 'Саша Абанов',
      'SCORES' : [ ( None, 0 ), ( None, 0 ), ( None, 0 ), ( None, 0 ) ] },

    { 'TEAM' : r'$\beta$',
      'JUDGE' : 'Коля Лужков',
      'SCORES' : [ ( None, 0 ), ( None, 0 ), ( None, 0 ), ( None, 0 ) ] },

    { 'TEAM' : r'$\gamma$',
      'JUDGE' : 'Лиза Ефимова',
      'SCORES' : [ ( None, 0 ), ( None, 0 ), ( None, 0 ), ( None, 0 ) ] },

    { 'TEAM' : r'$\delta$',
      'JUDGE' : 'Вова Краснобаев',
      'SCORES' : [ ( None, 0 ), ( None, 0 ), ( None, 0 ), ( None, 0 ) ] },

    { 'TEAM' : r'$\varepsilon$',
      'JUDGE' : 'Макс Бекетов',
      'SCORES' : [ ( None, 0 ), ( None, 0 ), ( None, 0 ), ( None, 0 ) ] },

    { 'TEAM' : r'$\theta$',
      'JUDGE' : 'Соня Абанова',
      'SCORES' : [ ( None, 0 ), ( None, 0 ), ( None, 0 ), ( None, 0 ) ] },

    { 'TEAM' : r'$\iota$',
      'JUDGE' : 'Таня Гусева',
      'SCORES' : [ ( None, 0 ), ( None, 0 ), ( None, 0 ), ( None, 0 ) ] },

    { 'TEAM' : r'$\pi$',
      'JUDGE' : 'Лера Убакова',
      'SCORES' : [ ( None, 0 ), ( None, 0 ), ( None, 0 ), ( None, 0 ) ] },

    { 'TEAM' : r'$\lambda$',
      'JUDGE' : 'Катя Семёнова',
      'SCORES' : [ ( None, 0 ), ( None, 0 ), ( None, 0 ), ( None, 0 ) ] },

    { 'TEAM' : r'$\kappa$',
      'JUDGE' : 'Лёша Смолянинов',
      'SCORES' : [ ( None, 0 ), ( None, 0 ), ( None, 0 ), ( None, 0 ) ] },

    { 'TEAM' : r'$\eta$',
      'JUDGE' : 'Саша Менщиков',
      'SCORES' : [ ( None, 0 ), ( None, 0 ), ( None, 0 ), ( None, 0 ) ] },

    { 'TEAM' : r'$o$',
      'JUDGE' : 'Никита Равчеев',
      'SCORES' : [ ( None, 0 ), ( None, 0 ), ( None, 0 ), ( None, 0 ) ] },

    { 'TEAM' : r'$\chi$',
      'JUDGE' : 'Ваня Адо',
      'SCORES' : [ ( None, 0 ), ( None, 0 ), ( None, 0 ), ( None, 0 ) ] },

    { 'TEAM' : r'$\mu$',
      'JUDGE' : 'Михаил Садовский',
      'SCORES' : [ ( None, 0 ), ( None, 0 ), ( None, 0 ), ( None, 0 ) ] },

    { 'TEAM' : r'$\psi$',
      'JUDGE' : 'Борис Демешев',
      'SCORES' : [ ( None, 0 ), ( None, 0 ), ( None, 0 ), ( None, 0 ) ] },

    { 'TEAM' : r'$\tau$',
      'JUDGE' : 'Илья Сергеев',
      'SCORES' : [ ( None, 0 ), ( None, 0 ), ( None, 0 ), ( None, 0 ) ] },

    { 'TEAM' : r'$\rho$',
      'JUDGE' : 'Антон Шейкин',
      'SCORES' : [ ( None, 0 ), ( None, 0 ), ( None, 0 ), ( None, 0 ) ] },

    { 'TEAM' : r'$\omega$',
      'JUDGE' : 'Лев Каминский',
      'SCORES' : [ ( None, 0 ), ( None, 0 ), ( None, 0 ), ( None, 0 ) ] },

    { 'TEAM' : r'$\varphi$',
      'JUDGE' : 'Антон Лысенко',
      'SCORES' : [ ( None, 0 ), ( None, 0 ), ( None, 0 ), ( None, 0 ) ] },

    { 'TEAM' : r'$\sigma$',
      'JUDGE' : 'Витя Антипов',
      'SCORES' : [ ( None, 0 ), ( None, 0 ), ( None, 0 ), ( None, 0 ) ] },

    { 'TEAM' : r'$\xi$',
      'JUDGE' : 'Витя Антипов',
      'SCORES' : [ ( None, 0 ), ( None, 0 ), ( None, 0 ), ( None, 0 ) ] },

    { 'TEAM' : r'$\nu$',
      'JUDGE' : 'Витя Антипов',
      'SCORES' : [ ( None, 0 ), ( None, 0 ), ( None, 0 ), ( None, 0 ) ] }
]

################### if svalka.pkl exists, load it; otherwise use default
 
try:
  import sys
  print(sys.version)
  svalka_file=open('svalka.pkl','rb')
  svalka = pickle.load(svalka_file)
  svalka_file.close()
except IOError:
  svalka=empty_svalka


