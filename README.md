# Eigenvalue Characterization of Structured Matrix Pencils under Linear Perturbation

This repository contains MATLAB implementations and numerical experiments accompanying our paper:

**"Eigenvalue Characterization of Some Structured Matrix Pencils under Linear Perturbation"**  
Morad Ahmadnasab, [Published 2024].  

---

## 🔎 Overview
We study the eigenvalue behavior of perturbed structured matrix pencils  
\[
P(z,t) = (A + t \Delta A) - z (B + t \Delta B),
\]
where \(t \in \mathbb{R}\setminus \{0\}\) is the perturbation parameter.  
Our analysis covers **Hermitian/skew-Hermitian**, **block-structured**, and **non-Hermitian** matrix pairs, with motivations from **continuous-time** and **discrete-time control** problems.  

A key achievement of this work is introducing **practical techniques** that provide **bounds on subsets of \(z\)** for which  
\[
\det(P(z,t)) = 0
\]
holds for some nonzero real \(t\).  
This perspective connects our work to **inverse eigenvalue problems**, where one seeks to characterize eigenvalues consistent with specified structural constraints.

---

## ✨ Key Contributions
- Characterization of eigenvalues of structured matrix pencils under real linear perturbations.  
- New **bounds on the spectrum** subsets for perturbed pencils across three structured families.  
- Identification of structural differences between continuous-time (imaginary axis) and discrete-time (unit circle) problems.  
- Application of an **inverse eigenvalue approach** to structured pencils, introducing subsets of admissible \(z\).  
- Practical techniques suggesting how to identify **nearest block problems** with guaranteed eigenvalue existence.  

---

## 📊 Applications
- Continuous-time control problems (block Hermitian/skew-Hermitian pencils).  
- Discrete-time control problems (non-Hermitian/non-Hermitian block pairs).  
- Structured inverse eigenvalue problems with constraints on \(z\) along the imaginary axis or unit circle.  

---

## 📄 Reference
If you use or refer to this work, please cite:  

M. Ahmadnasab, *Eigenvalue Characterization of Some Structured Matrix Pencils under Linear Perturbation*, 2024.  

---

## ⚙️ Code
This repository provides MATLAB scripts for:  
- Building structured matrix pencils and their perturbations.  
- Numerical experiments illustrating eigenvalue characterization.  
- Examples validating theoretical results on spectrum bounds and structure changes.  
