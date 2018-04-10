:-dynamic xpozytywne/2.
:-dynamic czy_bylo/2.
:-(clause(sport(_),_); consult('sports_db.pl')).

pozytywny(X,Y):-
        xpozytywne(X,Y),
        !.

pozytywny(X,Y):-
        not(czy_bylo(X,Y)),
        assertz(czy_bylo(X,Y)),
        sprawdzanko(X,Y,tak).
        
sprawdzanko(X,Y,tak):-
        !,
        write(X),write(' to '),write(Y),write(' ?'),nl,
        read(Odp),
        Odp = t,
        assertz(xpozytywne(X,Y)).
                
wyczysc_fakty:-
        retractall(xpozytywne(_,_)),
        retractall(czy_bylo(_,_)).
        

    
                
zgadywanko_sport() :- 
        sport(F), nl, nl, write('To jest prawdopodobnie '), write(F) ;
        nl, nl, write('Niestety, nie wiem co to jest '),nl,nl,
        write("__________████████_____██████"),nl,
        write("_________█░░░░░░░░██_██░░░░░░█"),nl,
        write("________█░░░░░░░░░░░█░░░░░░░░░█"),nl,
        write("_______█░░░░░░░███░░░█░░░░░░░░░█"),nl,
        write("_______█░░░░███░░░███░█░░░████░█"),nl,
        write("______█░░░██░░░░░░░░███░██░░░░██"),nl,
        write("_____█░░░░░░░░░░░░░░░░░█░░░░░░░░███"),nl,
        write("____█░░░░░░░░░░░░░██████░░░░░████░░█"),nl,
        write("____█░░░░░░░░░█████░░░████░░██░░██░░█"),nl,
        write("___██░░░░░░░███░░░░░░░░░░█░░░░░░░░███"),nl,
        write("__█░░░░░░░░░░░░░░█████████░░█████████"),nl,
        write("_█░░░░░░░░░░█████_████___████_█████___█"),nl,
        write("_█░░░░░░░░░░█______█_███__█_____███_█___█"),nl,
        write("█░░░░░░░░░░░░█___████_████____██_██████"),nl,
        write("░░░░░░░░░░░░░█████████░░░████████░░░█"),nl,
        write("░░░░░░░░░░░░░░░░█░░░░░█░░░░░░░░░░░░█"),nl,
        write("░░░░░░░░░░░░░░░░░░░░██░░░░█░░░░░░██"),nl,
        write("░░░░░░░░░░░░░░░░░░██░░░░░░░███████"),nl,
        write("░░░░░░░░░░░░░░░░██░░░░░░░░░░█░░░░░█"),nl,
        write("░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░█"),nl,
        write("░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░█"),nl,
        write("░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░█"),nl,
        write("░░░░░░░░░░░█████████░░░░░░░░░░░░░░██"),nl,
        write("░░░░░░░░░░█▒▒▒▒▒▒▒▒███████████████▒▒█"),nl,
        write("░░░░░░░░░█▒▒███████▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒█"),nl,
        write("░░░░░░░░░█▒▒▒▒▒▒▒▒▒█████████████████"),nl,
        write("░░░░░░░░░░████████▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒█"),nl,
        write("░░░░░░░░░░░░░░░░░░██████████████████"),nl,
        write("░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░█"),nl,
        write("██░░░░░░░░░░░░░░░░░░░░░░░░░░░██"),nl,
        write("▓██░░░░░░░░░░░░░░░░░░░░░░░░██"),nl,
        write("▓▓▓███░░░░░░░░░░░░░░░░░░░░█"),nl,
        write("▓▓▓▓▓▓███░░░░░░░░░░░░░░░██"),nl,
        write("▓▓▓▓▓▓▓▓▓███████████████▓▓█"),nl,
        write("▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓██"),nl,
        write("▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓█"),nl,
        write("▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓█"),nl.
        
    
        
update_clause:-
        consult('sports_db.pl').
        
add_sport():-
        open('sports_db.pl', append, Handle),
        nl,write('Podaj nazwe'),nl,
        read(Nazwa),
        write(Handle, '\nsport('), write(Handle, Nazwa), write(Handle, '):-\n'),
        write(Handle, '\t'),
        write('Jaki to sport? [1 - indywidualny, 2 -druzynowy]'),
        read(Nazwa1), 
        write(Handle, 'zespol('),
        (
        Nazwa1 = 1, write(Handle, 'indywidualny),\n'); !, write(Handle, 'druzynowy),\n')
        ),
        write("Dodaj przedmiot"),nl,
        write('Podaj nazwe '),
        read(Nazwa2),
        write(Handle, '\tprzedmioty('), write(Handle, Nazwa2), write(Handle, ').\n'),
        close(Handle),
        update_clause.




menu:-
        shell(clear),
        write('********************************************************'),nl,
        write('*                                                      *'),nl,
        write('*                SPORTY                                *'),nl,
        write('*                                                      *'),nl,
        write('********************************************************'),nl,
        write('*    1. - zgadywanko                                   *'),nl,
        write('*    2. - dodawanie sportow                            *'),nl,
        write('*    3.   koniec pracy                                 *'),nl,
        write('********************************************************'),nl,
        nl,nl,
        write('Wybor (zakonczony kropka): '), nl,
        read(X), 
        sth(X).
        
sth(1):-
        nl,nl,
        write('Sprobuje odgadnac o jaki sport Ci chodzi ! '),nl,
        zgadywanko_sport(), nl, nl,
        write("Dziękuję za grę! :)"),nl,
        write("Czy chcesz zagrać jeszcze raz?"),nl,
        read(Odp),
        (Odp = t, wyczysc_fakty, menu ; !, wyczysc_fakty, sth(3)).

sth(2):- 
        nl,
        add_sport,
        wyczysc_fakty,
        menu.

sth(3):-
        wyczysc_fakty, nl, nl, 
        write('Koniec !'), nl, get0(_), halt.
        
        
