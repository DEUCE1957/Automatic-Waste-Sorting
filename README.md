# Automatic-Waste-Sorting

Development Environment for research in pick-and-place robotics. 

![](Preview.png)

## Motivation
The autonomous execution of pick-and-place tasks on any object present an important challenge in robotics. Moving beyond hard-coded mechanical arms to responsive and flexible deep learning agents can be used to address a wide range of problems, such as sorting recyclable material or recovering from errors along production lines. To build these models, however, often requires collecting vasts amount of data whose quality limits what models can achieve. Hence, to build the solid foundations for future development this project aims to develop and evaluate an automatic and modular dataset generation pipeline for pick-and-place robotics. In so doing, it is hoped that models can become more robust to variations in such factors as: object type, colour and rotation. 

## Aims
This project aims to develop a prototype visual state classifier that can be used as the basis for machine learning systems to autonomously complete the pick-and-place task. This will use the automatically generated(and labelled) data to distinguish between the following visual states: APPROACHING, GRASPING, FAILING, EMPTY. 

## Pipeline
The dataset generation system is implemented as a pipeline to create a low development overhead:

![](SystemDiagram.png)

## Acknowledgements
Supervised by Dr. Paul Siebert (Paul.Siebert@glasgow.ac.uk)

Inspired by work of Lewis Boyd (lewis.boyd@strath.ac.uk) and Vanja Popovic (vanja.popovic@strath.ac.uk) for object alignment

## Credit
Collection of 3D models for Gazebo 7:
    A.Rasouli, J.K. Tsotsos. "The Effect of Color Space Selection on Detectability and Discriminability of Colored Objects." arXiv preprint arXiv:1702.05421 (2017). 