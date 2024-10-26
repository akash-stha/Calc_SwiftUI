# SwiftUI Calculator App

A simple calculator app built using SwiftUI for iOS. This app is designed to support both portrait and landscape orientations, providing a responsive layout for optimal user experience. It includes basic arithmetic operations such as addition, subtraction, multiplication, division, and percentage.

## Table of Contents
- [Features](#features)
- [Screenshots](#screenshots)
- [Requirements](#requirements)
- [Installation](#installation)
- [Project Structure](#project-structure)
- [Customization](#customization)

## Features
- **Basic Operations**: Supports addition, subtraction, multiplication, division, and percentage calculations.
- **Dark Mode Compatibility**: Automatically adapts to the device's dark or light mode settings.
- **Responsive Layout**: Optimized for portrait and landscape orientations using SwiftUI’s `GeometryReader`.
- **Interactive Button Press**: Visual feedback for button presses, enhancing user experience.

## Screenshots
<p align="center">  
  <img src="https://github.com/user-attachments/assets/292af627-7a57-4d2f-8de8-a2401aad4009" width="300" alt="Portrait Mode">
</p>

## Requirements
- **iOS**: 15.0+
- **Xcode**: 13.0+
- **Swift**: 5.0+

## Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/akash-stha/Calc_SwiftUI

## Project Structure
- ContentView.Swift: The main view contains the calculator layout and handles orientation changes using `GeoetryReader`.
- ButtonView.swift: A reusable button component with visual feedback for button press animations.
- CalcViewModel: A view model that handles calculator logic, including button operations and state management.

## Customization
The app's appearance can be changed into dark or light mode.
