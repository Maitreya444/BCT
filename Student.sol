pragma solidity  ^0.6;

contract Student_Management{

    Struct Student{
        Int stud_id;
        String stud_Name;
        String department;
    }

    Student[] Students;

    Function add_student_detail(int stud_id, string memory stud_Name, string memory department) public{
        Student memory stud_Data = Student(stud_id,stud_Name,department);
        Students.push(stud_Data);
    }

    Function getStudent(int stud_id) public view returns(string memory, string memory)
    {
        For(uint i=0; i<Students.length; i++)
        {
            Student memory stud = Students[i];
            If(stud.stud_id == stud_id){
                Return (stud.stud_Name, stud.department);
            }
        }
        Return(“Not Found”,”Not Found”);
    }
    
}

