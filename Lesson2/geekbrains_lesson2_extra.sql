
--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `depname` (`name`);

--
-- Индексы таблицы `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`),
  ADD KEY `salary` (`salary`),
  ADD KEY `dep_sotr` (`department`);

--
-- Индексы таблицы `_cities`
--
ALTER TABLE `_cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country-Id` (`country-id`),
  ADD KEY `region-Id` (`region-id`);

--
-- Индексы таблицы `_countries`
--
ALTER TABLE `_countries`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `_regions`
--
ALTER TABLE `_regions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `countryId` (`country-id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `_cities`
--
ALTER TABLE `_cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `dep_sotr` FOREIGN KEY (`department`) REFERENCES `departments` (`id`) ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `_cities`
--
ALTER TABLE `_cities`
  ADD CONSTRAINT `country-Id` FOREIGN KEY (`country-id`) REFERENCES `_countries` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `region-Id` FOREIGN KEY (`region-id`) REFERENCES `_regions` (`id`) ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `_regions`
--
ALTER TABLE `_regions`
  ADD CONSTRAINT `countryId` FOREIGN KEY (`country-id`) REFERENCES `_countries` (`id`) ON UPDATE CASCADE;
