:-dynamic sport/1.
:-style_check(-discontiguous).

zespol(indywidualny) :-
    pozytywny(czy, sport_indywidualny).

zespol(druzynowy) :-
    pozytywny(czy, sport_druzynowy).
    
obiekt(hala) :-
    pozytywny(czy, sport_rozgrywany_na_hali).
    
obiekt(woda) :-
    pozytywny(czy, sport_rozgrywany_na_wodzie).
    
obiekt(pole_golfowe) :-
    pozytywny(czy, sport_rozgrywany_na_polu_golfowym).
    
obiekt(stadion) :-
    pozytywny(czy, sport_rozgrywany_na_stadionie).
    
obiekt(hipodrom) :-
    pozytywny(czy, sport_rozgrywany_na_hipodromie).

obiekt(droga_asfaltowa) :-
    pozytywny(czy, sport_rozgrywany_na_drodze_asfaltowej).
    
obiekt(strzelnica) :-
    pozytywny(czy, sport_rozgrywany_na_strzelnicy).

obiekt(basen) :-
    pozytywny(czy, sport_rozgrywany_na_basenie).

obiekt(kort) :-
    pozytywny(czy, sport_rozgrywany_na_korcie).
    
obiekt(stok) :-
    pozytywny(czy, sport_rozgrywany_na_stoku).
    
obiekt(lodowisko) :-
    pozytywny(czy, sport_rozgrywany_na_lodowisku).
    
obiekt(skocznia) :-
    pozytywny(czy, sport_rozgrywany_na_skoczni_narciarskiej).
    
obiekt(tor) :-
    pozytywny(czy, sport_rozgrywany_na_torze).
    
    
przedmioty(bile) :-
    pozytywny(czy, sport_w_ktorym_uzywa_sie_bile).
    
przedmioty(lodz) :-
    pozytywny(czy, sport_w_ktorym_uzywa_sie_lodz).
    
przedmioty(zagiel) :-
    pozytywny(czy, sport_w_ktorym_uzywa_sie_zagla).
    
przedmioty(rakieta) :-
    pozytywny(czy, sport_w_ktorym_uzywa_sie_rakiety_takiej_jak_do_tenisa_nie_ze_jak_Elon_Musk_xD).
    
przedmioty(lotka) :-
    pozytywny(czy, sport_w_ktorym_uzywa_sie_lotki).
    
przedmioty(rekawica) :-
    pozytywny(czy, sport_w_ktorym_uzywa_sie_rekawic).
    
przedmioty(ring) :-
    pozytywny(czy, sport_w_ktorym_uzywa_sie_ring).
    
przedmioty(trampolina) :-
    pozytywny(czy, sport_w_ktorym_uzywa_sie_trampoliny).
    
przedmioty(kij) :-
    pozytywny(czy, sport_w_ktorym_uzywa_sie_kija).
    
przedmioty(kon) :-
    pozytywny(czy, sport_w_ktorym_uzywa_sie_konia).

przedmioty(judoga) :-
    pozytywny(czy, sport_w_ktorym_uzywa_sie_judogi).

przedmioty(kajak) :-
    pozytywny(czy, sport_w_ktorym_uzywa_sie_kajaka).

przedmioty(rower) :-
    pozytywny(czy, sport_w_ktorym_uzywa_sie_roweru).

przedmioty(pilka) :-
    pozytywny(czy, sport_w_ktorym_uzywa_sie_pilki).

przedmioty(kosz) :-
    pozytywny(czy, sport_w_ktorym_uzywa_sie_kosza).

przedmioty(luk) :-
    pozytywny(czy, sport_w_ktorym_uzywa_sie_luku).

przedmioty(korki) :-
    pozytywny(czy, sport_w_ktorym_uzywa_sie_korkow).

przedmioty(bramka) :-
    pozytywny(czy, sport_w_ktorym_uzywa_sie_bramek).

przedmioty(owalna_pilka) :-
    pozytywny(czy, sport_w_ktorym_uzywa_sie_owalnej_pilki).

przedmioty(siatka) :-
    pozytywny(czy, sport_w_ktorym_uzywa_sie_siatki).

przedmioty(czepek) :-
    pozytywny(czy, sport_w_ktorym_uzywa_sie_czepka).

przedmioty(skocznia) :-
    pozytywny(czy, sport_w_ktorym_uzywa_sie_skoczni).

przedmioty(bron) :-
    pozytywny(czy, sport_w_ktorym_uzywa_sie_broni).

przedmioty(naboj) :-
    pozytywny(czy, sport_w_ktorym_uzywa_sie_nabojow).

przedmioty(paletka) :-
    pozytywny(czy, sport_w_ktorym_uzywa_sie_paletki).
    
przedmioty(szczotka) :-
    pozytywny(czy, sport_w_ktorym_uzywa_sie_szczotki).

przedmioty(kamien) :-
    pozytywny(czy, sport_w_ktorym_uzywa_sie_kamieni).

przedmioty(krazek) :-
    pozytywny(czy, sport_w_ktorym_uzywa_sie_krazka).

przedmioty(lyzwy) :-
    pozytywny(czy, sport_w_ktorym_uzywa_sie_lyzew).
    
przedmioty(narty) :-
    pozytywny(czy, sport_w_ktorym_uzywa_sie_nart).

przedmioty(kask) :-
    pozytywny(czy, sport_w_ktorym_uzywa_sie_kasku).

sport(snooker) :- 
    zespol(indywidualny), 
    obiekt(hala),
    przedmioty(bile).
    
sport(żeglarstwo) :-
    obiekt(woda),
    przedmioty(lodz),
    przedmioty(zagiel).
    
sport(badminton) :- 
    obiekt(hala),
    przedmioty(rakieta),
    przedmioty(lotka).
    
sport(boks) :- 
    zespol(indywidualny),
    obiekt(hala),
    przedmioty(rekawica),
    przedmioty(ring).
    
sport(skoki_na_trampolinie) :- 
    zespol(indywidualny),
    obiekt(hala),
    przedmioty(trampolina).
    
sport(golf) :-
    zespol(indywidualnie),
    obiekt(pole_golfowe),
    przedmioty(kij).

sport(jezdziectwo) :- 
    zespol(indywidualny),
    obiekt(hipodrom),
    przedmioty(kon).
    
sport(judo) :- 
    zespol(indywidualny),
    obiekt(hala),
    przedmioty(judoga).
    
sport(kajakarstwo) :- 
    obiekt(woda),
    przedmioty(kajak).
    
sport(kolarstwo_szosowe) :- 
    obiekt(droga_asfaltowa),
    przedmioty(rower).
    
sport(koszykówka) :- 
    zespol(druzynowe),
    obiekt(hala),
    przedmioty(pilka),
    przedmioty(kosz).
    
sport(lucznictwo) :- 
    zespol(indywidualny),
    obiekt(strzelnica),
    przedmioty(luk).
    

sport(pilka_nozna) :-
    zespol(druzynowy),
    obiekt(stadion),
    przedmioty(pilka),
    przedmioty(korki).
    
sport(pilka_reczna) :-
    zespol(druzynowy),
    obiekt(hala),
    przedmioty(pilka),
    przedmioty(bramka).

sport(rugby) :- 
    zespol(druzynowy),
    obiekt(stadion),
    przedmioty(owalna_pilka).
    
    
sport(siatkowka) :- 
    zespol(druzynowy),
    obiekt(hala),
    przedmioty(pilka),
    przedmioty(siatka).
    
    
sport(plywanie) :- 
    zespol(indywidualny),
    obiekt(basen),
    przedmioty(czepek).
    
sport(skoki_do_wody) :- 
    zespol(indywidualny),
    obiekt(basen),
    przedmioty(skocznia).
    
sport(strzelectwo) :- 
    zespol(indywidualny),
    obiekt(strzelnica),
    przedmioty(bron),
    przedmioty(naboj).
        
sport(tenis_stolowy) :- 
    obiekt(hala),
    przedmioty(paletka).

    
sport(tenis_ziemny) :- 
    zespol(indywidualny),
    zespol(druzynowy),
    obiekt(kort),
    przedmioty(rakieta).
    
sport(curling) :- 
    zespol(druzynowy),
    obiekt(lodowisko),
    przedmioty(szczotka),
    przedmioty(kamien).
    
sport(hokej_na_lodzie) :- 
    zespol(druzynowy),
    obiekt(lodowisko),
    przedmioty(krazek),
    przedmioty(lyzwy).
    
    
sport(narciarstwo_alpejskie) :- 
    zespol(indywidualny),
    obiekt(stok),
    przedmioty(narty),
    przedmioty(kask).
    
sport(skoki_narciarskie) :-
    zespol(indywidualny),
    obiekt(skocznia),
    przedmioty(narty),
    przedmioty(kask).
    
