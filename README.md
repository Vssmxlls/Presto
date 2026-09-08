# 📚 Presto: Sistema de Gestión de Préstamos Bibliotecarios

Presto es una aplicación móvil y de escritorio construida con **Flutter**, diseñada para modernizar y optimizar los procesos de préstamo y devolución de libros en bibliotecas modernas o escolares. El nombre "Presto" evoca rapidez y facilidad, reflejando el objetivo principal: hacer que el proceso de tomar o devolver un libro sea instantáneo y sin fricciones, tanto para los bibliotecarios como para los usuarios.

---

## 🎯 Objetivos principales

- **Digitalización de procesos:** reemplazar los registros en papel o sistemas obsoletos por una interfaz digital, intuitiva y centralizada.
- **Acceso remoto:** permitir a los usuarios consultar el catálogo, reservar libros y ver el estado de sus préstamos desde cualquier lugar.
- **Automatización:** reducir la carga administrativa de los bibliotecarios mediante alertas automáticas de devoluciones vencidas y cálculo de multas.
- **Escalabilidad:** al estar hecho en Flutter, la aplicación es multiplataforma (iOS, Android, Web, Windows, macOS, Linux), lo que permite desplegar el sistema en diferentes dispositivos con una sola base de código.

---

## ✅ Estado actual del proyecto

Este proyecto está en desarrollo activo. Actualmente incluye:

- [x] Pantalla de inicio con splash screen personalizado
- [x] Inicio de sesión con validación de formulario
- [x] Registro de nuevos usuarios con validación de contraseña
- [x] Catálogo de libros con búsqueda y filtrado por título/autor
- [ ] Autenticación real (backend / base de datos)
- [ ] Persistencia de usuarios y préstamos
- [ ] Gestión de préstamos y devoluciones
- [ ] Panel de administración para bibliotecarios

---

## 🛠️ Tecnologías utilizadas

- **[Flutter](https://flutter.dev/)** — framework de UI multiplataforma
- **Dart** — lenguaje de programación
- **[flutter_native_splash](https://pub.dev/packages/flutter_native_splash)** — pantalla de carga nativa personalizada
- **[animate_do](https://pub.dev/packages/animate_do)** — animaciones de UI

---

## 📁 Estructura del proyecto

```
lib/
├── layouts/
│   └── presto_title.dart      # Encabezado con logo y nombre de la app
├── models_books/
│   └── book.dart               # Modelo de datos Book y catálogo de ejemplo
├── views/
│   ├── login_page.dart         # Pantalla de inicio de sesión
│   ├── registration_page.dart  # Pantalla de registro de usuario
│   └── search_book.dart        # Búsqueda y listado de libros
└── main.dart                   # Punto de entrada de la app

assets/
└── images/                     # Logo, splash screen y recursos gráficos
```

---

## 🚀 Cómo ejecutar el proyecto

### Requisitos previos

- [Flutter SDK](https://docs.flutter.dev/get-started/install) instalado (versión compatible con Dart `^3.13.2`)
- Un editor como VS Code o Android Studio con el plugin de Flutter
- Un emulador, dispositivo físico, o navegador (para la versión web)

### Pasos

1. Clona el repositorio:
   ```bash
   git clone https://github.com/Vssmxlls/Presto.git
   cd Presto
   ```

2. Instala las dependencias:
   ```bash
   flutter pub get
   ```

3. Verifica que todo esté en orden:
   ```bash
   flutter doctor
   ```

4. Ejecuta la aplicación:
   ```bash
   flutter run
   ```

   Para ejecutar en una plataforma específica:
   ```bash
   flutter run -d chrome    # Web
   flutter run -d windows   # Windows
   flutter run -d macos     # macOS
   ```

---

## 🧩 Funcionalidades

### Inicio de sesión
Formulario con validación de usuario y contraseña, con opción de redirigir al registro si el usuario no tiene cuenta.

### Registro de usuario
Formulario con validación de nombre, correo electrónico, contraseña (mínimo 6 caracteres) y confirmación de contraseña.

### Búsqueda de libros
Catálogo de libros con búsqueda en tiempo real por título o autor, usando `SearchDelegate` de Flutter.

---

## 🗺️ Roadmap

- [ ] Conectar login y registro a una base de datos (local con SQLite o remota con Firebase/API propia)
- [ ] Implementar navegación completa post-login (pantalla Home)
- [ ] Agregar gestión de estado (Provider / Riverpod / Bloc)
- [ ] Sistema de préstamos: solicitar, devolver, historial
- [ ] Notificaciones de devoluciones próximas a vencer
- [ ] Panel administrativo para bibliotecarios
- [ ] Tests unitarios y de widgets

---

## 🤝 Contribuciones

Este es un proyecto en construcción. Si quieres contribuir:

1. Haz un fork del repositorio
2. Crea una rama para tu funcionalidad (`git checkout -b feature/nueva-funcionalidad`)
3. Haz commit de tus cambios (`git commit -m 'Agrega nueva funcionalidad'`)
4. Sube tu rama (`git push origin feature/nueva-funcionalidad`)
5. Abre un Pull Request

---

## 📄 Licencia

MIT

---

## 👤 Autor

Desarrollado por [Vssmxlls](https://github.com/Vssmxlls)