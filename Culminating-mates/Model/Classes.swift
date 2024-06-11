//
//  Classes.swift
//  Culminating-mates
//
//  Created by Myers Elliott Mbonda on 2024-06-04.
//

import SwiftUI

struct Classes: Identifiable {
    let id = UUID()
    let course_name: String
    let image: String
    let course_code: String
    let module: Int
    let teacher_name: String
    let description: String
    
}


let ap_prep_functions_Block_C = Classes(course_name: "Ap prep functions(11)", image: "func", course_code: "MDM3D", module: 1, teacher_name: "Ms. Taylor", description: "Pre-AP Functions is a high school mathematics course designed to prepare students for the rigor of Advanced Placement (AP) calculus and other higher-level math courses. This course focuses on deepening students' understanding of algebraic concepts and introducing them to functions and their properties. ")

let ap_prep_physics_Block_C = Classes(course_name: "Ap prep Physics(11)", image: "Physics", course_code: "PHS3D", module: 1, teacher_name: "M. Braeckman", description: "The Grade 11 Pre-AP Physics course is designed to provide students with a rigorous introduction to the fundamental concepts of physics, preparing them for Advanced Placement (AP) Physics courses in their senior year. This course emphasizes a deep understanding of physical principles, critical thinking, and problem-solving skills through inquiry-based learning and laboratory experiments.")

let english_Block_C = Classes(course_name: "English(10)", image: "English", course_code: "ENG2D", module: 1, teacher_name: "Ms. Fraser", description: "The Grade 10 English course, following the Ontario Curriculum, is designed to enhance students' literacy, communication, and critical thinking skills through the study of literature, media, and various forms of writing. This course aims to help students appreciate the power of language while developing the competencies necessary for academic success and effective participation in society.")

let math_Block_C = Classes(course_name: "Principle of Math(10)", image: "math", course_code: "MPM2D", module: 1, teacher_name: "Ms. Sparkman", description: "The Grade 10 Mathematics course, following the Ontario Curriculum, is designed to consolidate and extend students' mathematical skills and concepts. The course emphasizes problem-solving, logical reasoning, and the application of mathematics to real-world situations. It provides a strong foundation for further studies in mathematics and other disciplines that require mathematical proficiency.")

let french_Block_C = Classes(course_name: "Core french(10)", image: "French", course_code: "FDF2D", module: 1, teacher_name: "M. Kayembe", description: "The Grade 10 Core French course, following the Ontario Curriculum, aims to develop students' French language skills in listening, speaking, reading, and writing. This course encourages students to communicate in French with increasing confidence and fluency, while also fostering an appreciation for Francophone cultures. It is designed to build on the foundational knowledge acquired in Grade 9 French and prepare students for more advanced studies in the language.")

let compsci_Block_C = Classes(course_name: "Intro CompSci", image: "Compsci", course_code: "FDF2D", module: 1, teacher_name: "Mr. Gordon",description: "Welcome to Introduction to Computer Science, a dynamic and engaging course designed for Grade 11 students who are eager to explore the exciting world of computing. This course provides a comprehensive foundation in computer science principles, preparing students for further studies and careers in technology and related fields.")

let allClasses = [
    english_Block_C,
    ap_prep_physics_Block_C,
    ap_prep_functions_Block_C,
    math_Block_C,
    french_Block_C,
    compsci_Block_C





]
