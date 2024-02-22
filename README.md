# 👁𝓔𝔂𝓮𝓔𝔁𝓹𝓮𝓻𝓽👁

## Introduction
Expert systems are one of the most beneficial AI applications that provide expertise swiftly, effectively, and efficiently while minimizing errors. They mimic the skills of a human expert in problem-solving and question-answering. Noting these characteristics, expert systems can be used to diagnose diseases and advise on treatment. They’re beneficial when someone can’t afford or access a doctor. And it’s even more accessible than waiting for appointments with a doctor. Furthermore, expert systems also provide a consistent and unified approach to diagnosis, as the diagnosis may differ from one doctor to another depending on the doctor’s skills and experience. 

Keeping these ideas in mind, this project builds a rule-based expert system using backward chaining in Prolog for the diagnosis of common eye diseases. The reason behind choosing eye disease diagnosis is that eye health is critical, and lately, many people suffer from eye problems due to lifestyle factors including increased usage of electronic devices. The eye is the most important sense organ, the main way we perceive life, hence knowing how to take care of it and understanding the problems encountered is vital. Building an expert system to help diagnose, understand the root of the problem, and offer treatments before one decides to visit the doctor is an apt solution. The built system will ask a set of questions to determine users’ symptoms, evaluate the flow, and reach a conclusion targeted to help the users learn about their condition.

## Notes
* This project was developed collaboratively as part of the AI Principles and Techniques course.
* The source code of the expert system can be found in the file named “sc.pl” and can be run with SWI Prolog or SWISH Prolog by typing the ‘eyeexpert’ predicate.
* The control flow of the expert system can be found in the file named “flowchart.pdf”.
* The flowchart shows the control flow associated with the symptoms of a disease and reaches a treatment for a disease where each disease/treatment is abbreviated as follows:
  
  * **T1:** Conjunctivitis 
  * **T2:** Farsightedness 
  * **T3:** Astigmatism 
  * **T4:** Nearsightedness 
  * **T5:** Cataract 
  * **T6:** Eye irritation 
  * **T7:** Dry eyes 
  * **F1:**
     * The disease is not in the scope of the domain. 
     * Incorrect answers were provided to the symptoms, try again! 
  * **F2:**
     * You are a perfect fit! Take care of your beautiful eyes for a healthy life! However, if you still feel that you may have an illness please consult with a specialist.
* This system's knowledge is not equivalent to an actual expert’s advice as it is merely a project.


