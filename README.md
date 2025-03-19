# Análisis de Pistas de Aterrizaje en América del Sur

## Descripción del Proyecto

Este proyecto presenta un análisis exhaustivo de las pistas de aterrizaje en América del Sur, utilizando datos extraídos de la base de datos "OurAirports_DataSource" disponible en Kaggle. El objetivo principal es evaluar las características de las pistas de aterrizaje en la región, incluyendo su longitud, ancho, elevación y tipo de superficie, para determinar la capacidad de estas pistas para recibir diferentes tipos de aeronaves.

## Contenido

- **Análisis de Superficies**: Evaluación de los tipos de superficies utilizadas en las pistas de aterrizaje y su impacto en la operatividad de las aeronaves.
- **Longitud de las Pistas**: Análisis de la longitud de las pistas y su adecuación para diferentes tipos de aviones.
- **Ancho de las Pistas**: Estudio del ancho de las pistas y su relación con la capacidad de recibir aeronaves más grandes.
- **Elevación de las Pistas**: Evaluación de la elevación de las pistas y su influencia en el rendimiento de las aeronaves.
- **Estadísticas Descriptivas**: Resumen de las características de las pistas de aterrizaje en el continente, incluyendo análisis por país.

## Metodología

1. **Extracción de Datos**: Se utilizó la base de datos "OurAirports_DataSource" de Kaggle.
2. **Inspección de Datos**: Se realizó una inspección inicial de los datos utilizando SQLite.
3. **Creación de Entidad**: Se creó una nueva entidad llamada `SA_Airports` que incluye las características relevantes para el análisis.
4. **Transformación de Datos**: Los datos fueron transformados a un archivo CSV para facilitar su manejo y análisis.
5. **Herramientas Utilizadas**: Se emplearon bibliotecas de Python como Pandas, Seaborn, Matplotlib, SQLAlchemy y Plotly Express para la visualización y análisis de datos.

## Resultados

- La mayoría de las pistas de aterrizaje en América del Sur son adecuadas para una variedad de aeronaves, aunque se identificaron áreas de mejora, especialmente en el tipo de superficie utilizada.
- Se observó que la longitud y el ancho de las pistas limitan la capacidad de recibir aeronaves más grandes, como los aviones comerciales de doble pasillo.
- La elevación de las pistas tiene un impacto significativo en el rendimiento de las aeronaves, siendo crucial para la operatividad en diferentes condiciones geográficas.

## Conclusiones

El análisis revela que, aunque las pistas de aterrizaje en América del Sur permiten una amplia gama de operaciones aéreas, existen limitaciones que deben ser abordadas para mejorar la infraestructura aeroportuaria. Se sugiere considerar el uso de concreto en lugar de asfalto para la construcción de pistas, así como la necesidad de aumentar la longitud y el ancho de las mismas para facilitar el aterrizaje de aeronaves más grandes.

## Instalación y Uso

Para ejecutar este análisis en su entorno local, siga estos pasos:

1. Clone el repositorio:
   ```bash
   git clone https://github.com/usuario/repo.git
   cd repo
   ```

2. Asegúrese de tener Python, Conda y las bibliotecas necesarias instaladas en un virtual enviroment. Puede crearlo utilizando:
   ```bash
   conda create --name pistas_de_aterrizaje --file requirements.txt
   ```

3. Ejecute el notebook de Jupyter en su virtual enviroment de Anaconda:
   ```bash
   jupyter notebook
   ```

## Contribuciones

Las contribuciones son bienvenidas. Si desea colaborar, por favor abra un issue o envíe un pull request.

## Licencia

Este proyecto está bajo la Licencia MIT. Consulte el archivo [LICENSE.txt](LICENSE.txt) para más detalles.

---
