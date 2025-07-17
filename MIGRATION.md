# Migration Documentation

## Migration from HTML/Tailwind to Flutter Web

This document describes the migration of Lucas Doddema's portfolio from a static HTML website with Tailwind CSS to a Flutter Web application.

### Original Structure
The original portfolio was built with:
- Static HTML (`index.html`)
- Tailwind CSS for styling (`src/css/`)
- Node.js build tools (`package.json`, `tailwind.config.js`)
- Simple responsive design

### New Flutter Structure
The migrated portfolio uses:
- Flutter Web framework
- Dart programming language  
- ResponsiveFramework for responsive design
- Material Design 3 theming
- Component-based architecture

### Visual Parity
The Flutter version maintains exact visual parity with the original:
- Same gradient background (gray-900 to slate-900 to black)
- Identical typography (Inter font family)
- Same responsive layout (two columns on desktop, single column on mobile)
- Matching colors and spacing
- Same content and sections

### Architecture Benefits
1. **Component Reusability**: Widgets can be reused and composed
2. **Type Safety**: Dart provides compile-time type checking
3. **Performance**: Flutter Web compiles to optimized JavaScript
4. **Maintainability**: Better code organization and structure
5. **Testing**: Built-in testing framework
6. **State Management**: Built-in state management capabilities

### File Mapping

| Original | Flutter Equivalent | Description |
|----------|-------------------|-------------|
| `index.html` | `web/index.html` + `lib/screens/portfolio_screen.dart` | Main HTML structure |
| Tailwind styles | `lib/widgets/*.dart` styling | Component-specific styling |
| Profile section HTML | `lib/widgets/profile_section.dart` | Profile information widget |
| About section HTML | `lib/widgets/about_section.dart` | About section widget |
| Experience section HTML | `lib/widgets/experience_section.dart` | Experience cards widget |
| Skills section HTML | `lib/widgets/skills_section.dart` | Skills list widget |

### Dependencies
- `flutter`: Core Flutter framework
- `responsive_framework`: Responsive layout management
- `url_launcher`: Opening external links
- `flutter_web_plugins`: Web-specific Flutter plugins

### Deployment
The Flutter version can be deployed to:
- GitHub Pages (static hosting)
- Netlify/Vercel (static hosting)
- Firebase Hosting
- Any static web hosting service

Build command: `flutter build web`

### Testing
Includes widget tests to verify:
- All sections render correctly
- Key text content is present
- Navigation and links work properly

Run tests with: `flutter test`