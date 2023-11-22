% raw data %

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

cataract('no','yes','yes','yes','yes','no','yes','yes','yes','yes','yes','Confidence level:', '92.5%').
cataract('no','yes','yes','yes','yes','no','yes','yes','no','yes','yes','Confidence level:', '91.25%').
cataract('no','yes','yes','yes','yes','no','no','yes','yes','yes','yes','Confidence level:', '91.25%').
cataract('no','yes','yes','yes','yes','no','no','yes','no','yes','yes','Confidence level:', '90%').
cataract('no','yes','no','yes','yes','no','no','yes','yes','yes','yes','Confidence level:', '90%').
cataract('no','yes','no','yes','yes','no','yes','yes','no','yes','yes','Confidence level:', '90%').
cataract('no','yes','no','yes','yes','no','yes','yes','yes','yes','yes','Confidence level:', '91.25%').
cataract('no','yes','no','yes','yes','no','no','yes','no','yes','yes','Confidence level:', '88.75%').


f1 :- nl,
      writeln("Sorry.."), nl,
      writeln("The disease you have is not in the scope of our domain."), nl,
      writeln("Or.."), nl,
      writeln("You might have not provided correct answers to your symptoms, try again!"), nl.

f2 :- nl,
      writeln("You are a perfect fit!"), nl,
      writeln("Take care of your beautiful eyes for a healthy life!"), nl,
      write("NOTE: "),
      writeln("However, if you still feel that you may have an illness please consult with a specialist."), nl.




