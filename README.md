# Тестовое задание

Необходимо реализовать E2E и Widget тесты для данного приложения по ниже описанным тест кейсам.
Для E2E теста предусмотреть несколько разных вариантов поиска виджетов - byKey, byWidgetPredicate, byType и тд
Допускается добавление собственных ключей для виджетов, а также будет плюсом применение паттерна PageObject.
Для виджет теста необходимо продемонстрирования понимание процесса мокирования.

## E2E test (обязательно)
<b>preconditions:</b><br>
пользователь находится на стартовом экране и видит две кнопки “зеленый”, “желтый”<br>
<b>steps:</b>
1. тапнуть на “зеленый” - должен открыться экран с белой надписью “зеленый экран” и зеленым фоном
2. тапнуть кнопку назад - должны попасть на стартовый экран
3. тапнуть на “желтый” - должен открыться экран с кнопкой “случайное число”, текст в центре экрана не отображается
4. тапнуть кнопку “случайное число” - отображается надпись с числом от 0 до 99 в центре экрана
5. тапнуть кнопку назад - должны попасть на стартовый экран

## Widget test (будет плюсом)
<b>preconditions:</b><br>
создать инстанс виджета желтого экрана<br>
<b>steps:</b>
1. должна отображаться кнопка “случайное число”, фон экрана желтый, а также должна отображаться кнопка “назад”
2. тапнуть по кнопке “случайное число” и проверить, что число от 0 до 49 отображается синим цветом
