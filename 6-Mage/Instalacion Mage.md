# Mage.ai

Mage.ai es una herramienta de código abierto que facilita la transformación e integración de datos. Imagina una navaja suiza para tus datos, que te permite extraerlos de diferentes fuentes, limpiarlos, transformarlos y cargarlos en tu almacén de datos o lago de datos. 

**¿Qué lo hace especial?**

* **Experiencia de desarrollo amigable:** Olvídate de las complejidades de herramientas como Airflow. Mage.ai ofrece una interfaz intuitiva tipo notebook donde puedes escribir código en Python, SQL o R, todo en un mismo lugar.
* **Código modular y reutilizable:**  Cada paso en tu proceso de datos se convierte en un bloque de código independiente, lo que facilita su reutilización y prueba. ¡Adiós al código espagueti!
* **Previsualización instantánea:**  No esperes a que tus procesos terminen para ver los resultados. Mage.ai te muestra la salida de cada bloque de código en tiempo real, como si fuera un notebook interactivo.
* **Escalabilidad sin complicaciones:**  ¿Necesitas procesar grandes volúmenes de datos? Mage.ai se integra con Spark y tu almacén de datos para que puedas escalar tus procesos sin problemas.
* **Implementación rápida:**  Con un par de comandos y plantillas de Terraform, puedes implementar Mage.ai en AWS, GCP o Azure.

**Instalación con Docker (la forma recomendada):**

1. **Clona el repositorio y navega a la carpeta:**

   ```bash
   git clone https://github.com/mage-ai/compose-quickstart.git mage-quickstart && cd mage-quickstart
   ```

2. **Crea las carpetas data y secrets:**

   ```bash
   mkdir data secrets
   ```

3. **Copia el archivo:**

   ```bash
   cp dev.env .env
   ```

4. **Inicia los contenedores con Docker Compose:**

   ```bash
   docker compose up -d
   ```
