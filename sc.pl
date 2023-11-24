% raw data %

% T1: conjunctivitis %

conjunctivitis('no','yes','yes','yes','no','yes','yes','Confidence level:', '95%' ).
conjunctivitis('no','yes','yes','yes','no','no','yes','Confidence level:', '93.75%').
conjunctivitis('no','yes','no','yes','no','yes','yes','Confidence level:', '93.75%').
conjunctivitis('no','yes','no','yes','no','no','yes','Confidence level:', '92.5%').

% T2: Farsightedness %

farsightedness('yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'Confidence level:', '95%').
farsightedness('yes', 'yes', 'yes', 'yes', 'yes', 'no', 'yes', 'yes', 'Confidence level:', '93.75%').
farsightedness('yes', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 'Confidence level:', '93.75%').
farsightedness('yes', 'yes', 'yes', 'no', 'yes', 'no', 'yes', 'yes', 'Confidence level:', '92.5%').
farsightedness('yes', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 'Confidence level:', '93.75%').
farsightedness('yes', 'yes', 'no', 'yes', 'yes', 'no', 'yes', 'yes', 'Confidence level:', '92.5%').
farsightedness('yes', 'yes', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 'Confidence level:', '92.5%').
farsightedness('yes', 'yes', 'no', 'no', 'yes', 'no', 'yes', 'yes', 'Confidence level:', '91.25%').

% T4: Narsightedness %

nearsightedness('yes', 'yes', 'yes', 'yes', 'no', 'yes', 'no', 'yes', 'yes', 'Confidence level:', '95%').
nearsightedness('yes', 'yes', 'yes', 'yes', 'no', 'no', 'no', 'yes', 'yes', 'Confidence level:', '93.75%').
nearsightedness('yes', 'yes', 'yes', 'no', 'no', 'yes', 'no', 'yes', 'yes', 'Confidence level:', '93.75%').
nearsightedness('yes', 'yes', 'yes', 'no', 'no', 'no', 'no', 'yes', 'yes', 'Confidence level:', '92.5%').
nearsightedness('yes', 'yes', 'no', 'yes', 'no', 'yes', 'no', 'yes', 'yes', 'Confidence level:', '93.75%').
nearsightedness('yes', 'yes', 'no', 'yes', 'no', 'no', 'no', 'yes', 'yes', 'Confidence level:', '92.5%').
nearsightedness('yes', 'yes', 'no', 'no', 'no', 'yes', 'no', 'yes', 'yes', 'Confidence level:', '92.5%').
nearsightedness('yes', 'yes', 'no', 'no', 'no', 'no', 'no', 'yes', 'yes', 'Confidence level:', '91.25%').

% T5: Cataract %

cataract('no','yes','yes','yes','yes','no','yes','yes','yes','yes','yes','Confidence level:', '95%').
cataract('no','yes','yes','yes','yes','no','yes','yes','no','yes','yes','Confidence level:', '93.75%').
cataract('no','yes','yes','yes','yes','no','no','yes','yes','yes','yes','Confidence level:', '93.75%').
cataract('no','yes','yes','yes','yes','no','no','yes','no','yes','yes','Confidence level:', '92.5%').
cataract('no','yes','no','yes','yes','no','no','yes','yes','yes','yes','Confidence level:', '92.5%').
cataract('no','yes','no','yes','yes','no','yes','yes','no','yes','yes','Confidence level:', '92.5%').
cataract('no','yes','no','yes','yes','no','yes','yes','yes','yes','yes','Confidence level:', '93.75%').
cataract('no','yes','no','yes','yes','no','no','yes','no','yes','yes','Confidence level:', '91.25%').

% T7: Dry Eyes % 

dry_eyes('no','yes', 'yes', 'yes', 'yes', 'yes', 'Confidence level:', '95%').
dry_eyes('no','yes', 'no', 'yes', 'yes', 'yes', 'Confidence level:', '93.75%').

f1 :- nl,
      writeln("Sorry.."), nl,
      writeln("The disease you have is not in the scope of our domain."), nl,
      writeln("Or.."), nl,
      writeln("You might have not provided correct answers to your symptoms, try again!"), nl,
      close.

f2 :- nl,
      writeln("You are a perfect fit!"), nl,
      writeln("Take care of your beautiful eyes for a healthy life!"), nl,
      write("NOTE: "),
      writeln("However, if you still feel that you may have an illness please consult with a specialist."), nl,
      close.

poorVision(S1) :-
    writeln("Are you only experiencing poor vision?"),
    write("Enter yes/no: "),
    read(S2), nl,
    ( 
        not(S2 == 'yes'), not(S2 == 'no') -> writeln("Invalid input."), poorVision(S1);
        (S2 == 'yes') -> eyeStrain(S1,S2); troublesome_eyes(S2)
    ).

troublesome_eyes(S1):-
    writeln("Are you experiencing troublesome eyes? (pain/redness/discomfort)"),
    write("Enter yes/no: "),
    read(S2),nl,
    (
        not(S2=='yes'),not(S2=='no')->writeln('Invalid Input.'),troublesome_eyes(S1);
        (S2=='yes') -> watery_eyes(S1,S2);f2
    ).

eyeStrain(S1,S2) :-
    writeln("Do you have eye strain?"),
    write("Enter yes/no: "),
    read(S3), nl,
    ( 
        not(S3 == 'yes'), not(S3 == 'no') -> write("Invalid input."), eyeStrain(S1,S2);
        (S3 == 'yes') -> headaches(S1,S2,S3); headaches(S1,S2,S3)
    ).

headaches(S1,S2,S3) :-
    writeln('Do you have headaches often?'),
    write("Enter yes/no: "),
    read(S4), nl,
    (
        not(S4 == 'yes'), not(S4 == 'no') -> write("Invalid input."), headaches(S1,S2,S3);
        (S4 == 'yes') -> tiredEyes(S1,S2,S3,S4); tiredEyes(S1,S2,S3,S4)
    ).

tiredEyes(S1,S2,S3,S4) :-
    writeln("Do your eyes get tired easily and often?"),
    write("Enter yes/no: "),
    read(S5), nl,
    (
        not(S5 == 'yes'), not(S5 == 'no') -> writeln("Invalid input."), tiredEyes(S1,S2,S3,S4);
        (S5 == 'yes') -> soreEyes(S1,S2,S3,S4,S5); troubleNightime(S1,S2,S3,S4,S5)
    ).

soreEyes(S1,S2,S3,S4,S5) :-
    writeln("Do you have sore eyes?"),
    write("Enter yes/no: "),
    read(S6), nl,
    (
        not(S6 == 'yes'), not(S6 == 'no') -> writeln("Invalid input."), soreEyes(S1,S2,S3,S4,S5);
        (S6 == 'yes') -> troubleNearby(S1,S2,S3,S4,S5,S6); troubleNearby(S1,S2,S3,S4,S5,S6)
    ).

troubleNearby(S1,S2,S3,S4,S5,S6) :-
    writeln("Do you have trouble seeing nearby objects?"),
    write("Enter yes/no: "),
    read(S7), nl,
    (
        not(S7 == 'yes'), not(S7 == 'no') -> writeln("Invalid input."), troubleNearby(S1,S2,S3,S4,S5,S6);
        (S7 == 'yes') -> distanceClearly(S1,S2,S3,S4,S5,S6,S7); f1
    ).

distanceClearly(S1,S2,S3,S4,S5,S6,S7) :-
   writeln("Can you see objects from a distance more clearly than objects that are nearby?"),
   write("Enter yes/no: "),
   read(S8), nl,
    (
        not(S8 == 'yes'), not(S8 == 'no') -> writeln("Invalid input."), distanceClearly(S1,S2,S3,S4,S5,S6,S7);
        (S8 == 'yes') -> t2(S1,S2,S3,S4,S5,S6,S7,S8); f1
    ).

watery_eyes(S1,S2):-
    writeln("Do you have watery eyes?"),
    write("Enter yes/no: "),
    read(S3),nl,
    (
        not(S3=='yes'),not(S3=='no')->writeln('Invalid Input.'),watery_eyes(S1,S2);
        itchy_eyes(S1,S2,S3)
    ).

itchy_eyes(S1,S2,S3):-
    writeln("Do you often have itchy eyes?"),
    write("Enter yes/no: "),
    read(S4),nl,
    (
        not(S4=='yes'),not(S4=='no')->writeln('Invalid Input.'),itchy_eyes(S1,S2,S3);
        (S4=='yes') -> blurry(S1,S2,S3,S4);secretion(S1,S2,S3,S4)
    ).

blurry(S1,S2,S3,S4):-
    writeln("Does your vision get blurry?"),
    write("Enter yes/no: "),
    read(S5),nl,
    (
        not(S5=='yes'),not(S5=='no')->writeln('Invalid Input.'),blurry(S1,S2,S3,S4);
        (S5=='yes') -> sand(S1,S2,S3,S4,S5);hot(S1,S2,S3,S4,S5)
    ).

sand(S1,S2,S3,S4,S5):-
    writeln("Do you feel like your eyes have sand in them?"),
    write("Enter yes/no: "),
    read(S6),nl,
    (
        not(S6=='yes'),not(S6=='no')->writeln('Invalid Input.'),sand(S1,S2,S3,S4,S5);
        (S6=='yes') -> t7(S1,S2,S3,S4,S5,S6);fadedColors(S1,S2,S3,S4,S5,S6)
    ).

fadedColors(S1,S2,S3,S4,S5,S6):- 
    writeln("Do you see colors as faded colors?"),
    write("Enter yes/no: "),
    read(S7),nl,
    (
        not(S7=='yes'),not(S7=='no') -> writeln("Invalid Input."), fadedColors(S1,S2,S3,S4,S5,S6);
        (halos(S1,S2,S3,S4,S5,S6,S7))
    ).

halos(S1,S2,S3,S4,S5,S6,S7):-
    writeln("Do you see halos or rings around lights?"),
    write("Enter yes/no: "),
    read(S8),nl,
    (
        not(S8=='yes'),not(S8=='no') -> writeln("Invalid Input."), halos(S1,S2,S3,S4,S5,S6,S7);
        ((S8=='yes') -> prescription(S1,S2,S3,S4,S5,S6,S7,S8) ; f1)
    ).

prescription(S1,S2,S3,S4,S5,S6,S7,S8):-
    writeln("Does your eye prescription change often?"),
    write("Enter yes/no: "),
    read(S9),nl,
    (
        not(S9=='yes'),not(S9=='no') -> writeln("Invalid Input."), prescription(S1,S2,S3,S4,S5,S6,S7,S8);
        (doublevision(S1,S2,S3,S4,S5,S6,S7,S8,S9))
    ).

doublevision(S1,S2,S3,S4,S5,S6,S7,S8,S9):-
    writeln("Do you have double vision?"),
    write("Enter yes/no: "),
    read(S10),nl,
    (
        not(S10=='yes'),not(S10=='no') -> writeln("Invalid Input."), doublevision(S1,S2,S3,S4,S5,S6,S7,S8,S9);
        ((S10=='yes') -> whitecolor(S1,S2,S3,S4,S5,S6,S7,S8,S9,S10) ; f1)
    ).

whitecolor(S1,S2,S3,S4,S5,S6,S7,S8,S9,S10):-
    writeln("Is there a white color change on the black part of your eye?"),
    write("Enter yes/no: "),
    read(S11),nl,
    (
        not(S11=='yes'),not(S11=='no') -> writeln("Invalid Input."),whitecolor(S1,S2,S3,S4,S5,S6,S7,S8,S9,S10);
        ((S11=='yes') -> t5(S1,S2,S3,S4,S5,S6,S7,S8,S9,S10,S11) ; f1)
    ).

t2(S1,S2,S3,S4,S5,S6,S7,S8) :-
   writeln('We predict you might have "Farsightedness".'), nl,
   farsightedness(S1,S2,S3,S4,S5,S6,S7,S8,X,Y), 
   write(X), 
   write(Y),
   nl, nl,
   writeln("Recommended treatments are mentioned below: "), nl,
   writeln("1."),
   writeln("Glasses or contact lenses are the two most popular farsightedness treatments."),
   writeln("To help you see as clearly as possible, an opthalmalogist will prescribe the appropriate lenses."),nl,
   writeln("2."),
   writeln("Surgery is another option for treating adult farsightedness."),
   writeln("For example, LASIK eye surgery helps people with lower degrees of farsightedness."),
   writeln("It uses a laser to reshape your cornea."),nl,
   writeln("3."),
   writeln("For people with higher degrees of farsightedness, refractive lens exchange may help."),
   writeln("This surgery replaces your natural lens with an intraocular lens (IOL) to correct your vision."),nl,
   close.

t5(S1,S2,S3,S4,S5,S6,S7,S8,S9,S10,S11):-
    nl,
    writeln('We predict you might have "Cataract".'), nl,
    cataract(S1,S2,S3,S4,S5,S6,S7,S8,S9,S10,S11,X,Y),
    write(X), 
    write(Y),
    nl, nl, 
    writeln("Recommended treatments are mentioned below: "), nl,
    writeln("1."),
    writeln("The only way to treat cataracts is through surgery. However, you may not require it immediately away."),
    writeln("If the issue is discovered early enough, you might be able to get by with a fresh prescription for your glasses."),
    writeln("Your vision might improve temporarily with a stronger lens."),nl,
    close.

t7(S1,S2,S3,S4,S5,S6):-
    nl,
    writeln('We predict you might have "Dry Eyes".'),nl,
    dry_eyes(S1,S2,S3,S4,S5,S6,X,Y),
    write(X), 
    write(Y),
    nl, nl, 
    writeln("Recommended treatments are mentioned below: "), nl,
    writeln("1."),
    writeln("Take frequent breaks while using electronic devices every 30 minutes for three minutes (rule of eyes 30/3)."),nl,
    writeln("2."),
    writeln("Use eye drops to help regenerate the dry layer of the eyes."),nl,
    writeln("3."),
    writeln("Don’t touch your eyes and only touch with a clean hand and tissues when necessary."),nl,
    close.

close :-
   writeln("We hope our diagnosis was correct and helpful!"),nl,
   writeln("👁𝓣𝓱𝓪𝓷𝓴 𝔂𝓸𝓾 𝓯𝓸𝓻 𝓾𝓼𝓲𝓷𝓰 𝓔𝔂𝓮𝓔𝔁𝓹𝓮𝓻𝓽!👁"),nl,
   writeln("Do you want to exit the program?"), nl,
   write("Enter yes/no: "),
   read(Choice),nl,
   (Choice == 'yes') -> halt; menu.
   




