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
    
    
}


let ap_prep_functions_Block_C = Classes(course_name: "Ap prep functions(11)", image: "func", course_code: "MDM3D", module: 1, teacher_name: "Ms. Taylor")

let ap_prep_physics_Block_C = Classes(course_name: "Ap prep Physics(11)", image: "Physics", course_code: "PHS3D", module: 1, teacher_name: "M. Braeckman")

let english_Block_C = Classes(course_name: "English(10)", image: "English", course_code: "ENG2D", module: 1, teacher_name: "M. Lee")

let math_Block_C = Classes(course_name: "Principle of Math(10)", image: "math", course_code: "MPM2D", module: 1, teacher_name: "Ms. Sparkman")

let french_Block_C = Classes(course_name: "Core french(10)", image: "French", course_code: "FDF2D", module: 1, teacher_name: "M. Kayembe")

let compsci_Block_C = Classes(course_name: "Intro CompSci", image: "Compsci", course_code: "FDF2D", module: 1, teacher_name: "Mr. Gordon")

let allClasses = [
    english_Block_C,
    ap_prep_physics_Block_C,
    ap_prep_functions_Block_C,
    math_Block_C,
    french_Block_C,
    compsci_Block_C





]
