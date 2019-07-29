
--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id-area`),
  ADD KEY `id-region` (`id-region`),
  ADD KEY `id-country` (`id-country`);

--
-- Индексы таблицы `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id-city`),
  ADD KEY `id-area` (`id-area`),
  ADD KEY `id-region` (`id-region`),
  ADD KEY `id-country` (`id-country`);

--
-- Индексы таблицы `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id-country`);

--
-- Индексы таблицы `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`id-region`),
  ADD KEY `id-country` (`id-country`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `cities`
--
ALTER TABLE `cities`
  MODIFY `id-city` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `areas`
--
ALTER TABLE `areas`
  ADD CONSTRAINT `areas_ibfk_1` FOREIGN KEY (`id-region`) REFERENCES `regions` (`id-region`),
  ADD CONSTRAINT `areas_ibfk_2` FOREIGN KEY (`id-country`) REFERENCES `countries` (`id-country`);

--
-- Ограничения внешнего ключа таблицы `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_ibfk_1` FOREIGN KEY (`id-area`) REFERENCES `areas` (`id-area`),
  ADD CONSTRAINT `cities_ibfk_2` FOREIGN KEY (`id-region`) REFERENCES `regions` (`id-region`),
  ADD CONSTRAINT `cities_ibfk_3` FOREIGN KEY (`id-country`) REFERENCES `countries` (`id-country`);

--
-- Ограничения внешнего ключа таблицы `regions`
--
ALTER TABLE `regions`
  ADD CONSTRAINT `regions_ibfk_1` FOREIGN KEY (`id-country`) REFERENCES `countries` (`id-country`);
