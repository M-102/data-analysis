# Анализ тональности текстов с использованием IMDb

Данный проект демонстрирует построение и обучение нейронной сети для анализа тональности текстов (определения позитивного или негативного настроения) с использованием набора данных IMDb. Проект реализован с помощью TensorFlow и Keras.

## Описание проекта

В проекте реализована простая нейронная сеть, которая:
- Загружает набор данных IMDb, ограниченный 1000 наиболее частыми словами.
- Преобразует последовательности слов в бинарную матрицу с помощью `Tokenizer`.
- Обучает модель для классификации отзывов как позитивных или негативных.
- Предоставляет пример предсказания тональности для произвольного текста.

## Архитектура модели

Модель построена с использованием последовательной модели Keras (`Sequential`) и имеет следующую структуру:
- **Входной слой**: Вектор размером 1000, представляющий бинарное присутствие слов.
- **Скрытый слой**: Полносвязный слой (Dense) с 512 нейронами и функцией активации ReLU.
- **Dropout**: Слой Dropout с вероятностью 0.5 для предотвращения переобучения.
- **Выходной слой**: Полносвязный слой с 1 нейроном и функцией активации sigmoid для бинарной классификации.

## Используемые библиотеки

- [TensorFlow](https://www.tensorflow.org/)
- [Keras (tensorflow.keras)](https://keras.io/)
- [IMDb Dataset](https://keras.io/api/datasets/imdb/)

## Установка и запуск

Для установки необходимых библиотек выполните следующие команды:

```bash
pip uninstall keras tensorflow
pip install tensorflow

