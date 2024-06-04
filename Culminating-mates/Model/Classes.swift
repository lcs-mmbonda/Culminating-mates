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


let ap_prep_functions_Block_C = Classes(course_name: "math", image: "func", course_code: "MDM2D", module: 1, teacher_name: "Ms. Taylor")

let ap_prep_physics_Block_C = Classes(course_name: "physics", image: "func", course_code: "PS453", module: 1, teacher_name: "M. Braeckman")

let ap_prep_econ_Block_C = Classes(course_name: "econ", image: "func", course_code: "EC980", module: 1, teacher_name: "M. Lee")


let allClasses = [
    ap_prep_econ_Block_C,
    ap_prep_physics_Block_C,
    ap_prep_functions_Block_C





]
