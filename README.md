# Lucas Doddema's Portfolio

A modern, responsive portfolio website built with Flutter Web, showcasing my skills and experience as a Software Engineering student.

## Features

- **Responsive Design**: Optimized for desktop, tablet, and mobile devices
- **Modern UI**: Clean, professional design with smooth animations
- **Interactive Elements**: Hover effects and clickable social links
- **Performance Optimized**: Built with Flutter Web for fast loading
- **Accessibility**: Semantic structure and keyboard navigation support

## Tech Stack

- **Framework**: Flutter 3.24+ 
- **Language**: Dart
- **Responsive Framework**: ResponsiveFramework package
- **Deployment**: Flutter Web
- **Styling**: Material Design 3 with custom theming

## Sections

- **Profile**: Introduction with name, title, and professional motto
- **About**: Personal description and background
- **Experience**: Professional experience and projects
- **Skills**: Programming languages and frameworks

## Getting Started

### Prerequisites

- Flutter SDK 3.0 or higher
- Dart SDK
- Web browser for testing

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/EENprofiel/portfolio_LucasDoddema.git
   cd portfolio_LucasDoddema
   ```

2. Install dependencies:
   ```bash
   flutter pub get
   ```

3. Run the development server:
   ```bash
   flutter run -d web
   ```

4. Open [http://localhost:3000](http://localhost:3000) in your browser

### Building for Production

```bash
flutter build web
```

The built files will be in the `build/web` directory.

## Project Structure

```
lib/
├── main.dart              # App entry point
├── screens/
│   └── portfolio_screen.dart  # Main portfolio layout
└── widgets/
    ├── profile_section.dart    # Profile/contact section
    ├── main_content.dart      # Main content wrapper
    ├── about_section.dart     # About section
    ├── experience_section.dart # Experience section
    └── skills_section.dart    # Skills section
```

## Contact

- **GitHub**: [EENprofiel](https://github.com/EENprofiel)
- **LinkedIn**: [lucas-doddema](https://www.linkedin.com/in/lucas-doddema)

## License

This project is open source and available under the [MIT License](LICENSE).