# 🖥️ Payroll Processing System (COBOL + JCL + VSAM)

[![COBOL](https://img.shields.io/badge/Language-COBOL-blue)](#)
[![JCL](https://img.shields.io/badge/Mainframe-JCL-green)](#)
[![Platform](https://img.shields.io/badge/IBM-z%2FOS-lightgrey)](#)
[![Status](https://img.shields.io/badge/Build-Passing-brightgreen)](#)

## 📌 Overview
A classic **Mainframe Payroll Processing System** implemented in **COBOL**, with supporting **JCL scripts** to compile, link, and execute on **IBM z/OS** (tested on IBM Z Xplore).  
This project demonstrates core **mainframe enterprise programming concepts**: batch processing, dataset allocation, copybooks, and job execution.

## ⚙️ Features
- Employee **Master File** (VSAM style input in sequential dataset).
- Salary computation with **Gross, PF (12%), Tax (10%), Net Salary**.
- Generates formatted **Payroll Report**.
- End-to-end flow: **JCL dataset allocation → COBOL compile → Execute → Report Output**.

## 📂 Project Structure
├── COBOL/
│ └── PAYROLL.cbl # COBOL payroll program
├── COPY/
│ └── EMPREC.cpy # Employee record copybook
├── JCL/
│ ├── ALLOCALL.jcl # Allocate datasets (SOURCE, JCL, LOAD,   INPUT, OUTPUT)
│ ├── LOADIN.jcl # Load employee input dataset
│ ├── CLGPRUN.jcl # Compile + Link COBOL program
│ └── RUNPAY.jcl # Execute payroll program
├── SAMPLE/
│ └── PAYRPT.txt # Example payroll report
└── README.md # Documentation


## 🚀 How to Run on IBM Z Xplore
1. Submit `ALLOCALL.jcl` → allocates all PDS datasets.  
2. Upload COBOL source and copybook:
   - `PAYROLL.cbl` → `Zxxxx.SOURCE(PAYROLL)`
   - `EMPREC.cpy` → `Zxxxx.COPY(EMPREC)`  
3. Submit `LOADIN.jcl` → creates input dataset (`INPUT(EMPIN)`).  
4. Submit `CLGPRUN.jcl` → compile + link into `LOAD(PAYROLL)`.  
5. Submit `RUNPAY.jcl` → executes program and generates payroll report in `OUTPUT(PAYRPT)`.