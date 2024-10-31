# Домашнее задание к занятию 7 «Жизненный цикл ПО»

## Подготовка к выполнению

1. Получить бесплатную версию Jira - https://www.atlassian.com/ru/software/jira/work-management/free (скопируйте ссылку в адресную строку). Вы можете воспользоваться любым(в том числе бесплатным vpn сервисом) если сайт у вас недоступен. Кроме того вы можете скачать [docker образ](https://hub.docker.com/r/atlassian/jira-software/#) и запустить на своем хосте self-managed версию jira.
2. Настроить её для своей команды разработки.
3. Создать доски Kanban и Scrum.
4. [Дополнительные инструкции от разработчика Jira](https://support.atlassian.com/jira-cloud-administration/docs/import-and-export-issue-workflows/).

## Основная часть

Необходимо создать собственные workflow для двух типов задач: bug и остальные типы задач. Задачи типа bug должны проходить жизненный цикл:

1. Open -> On reproduce.
2. On reproduce -> Open, Done reproduce.
3. Done reproduce -> On fix.
4. On fix -> On reproduce, Done fix.
5. Done fix -> On test.
6. On test -> On fix, Done.
7. Done -> Closed, Open.

Остальные задачи должны проходить по упрощённому workflow:

1. Open -> On develop.
2. On develop -> Open, Done develop.
3. Done develop -> On test.
4. On test -> On develop, Done.
5. Done -> Closed, Open.

**Что нужно сделать**

1. Создайте задачу с типом bug, попытайтесь провести его по всему workflow до Done. 
1. Создайте задачу с типом epic, к ней привяжите несколько задач с типом task, проведите их по всему workflow до Done. 
1. При проведении обеих задач по статусам используйте kanban. 
1. Верните задачи в статус Open.
1. Перейдите в Scrum, запланируйте новый спринт, состоящий из задач эпика и одного бага, стартуйте спринт, проведите задачи до состояния Closed. Закройте спринт.
2. Если всё отработалось в рамках ожидания — выгрузите схемы workflow для импорта в XML. Файлы с workflow и скриншоты workflow приложите к решению задания.

---

### Решение:

1. Создайте задачу с типом bug, попытайтесь провести его по всему workflow до Done.

![img](https://github.com/valery-dubinin/mnt-homeworks/blob/MNT-video/09-ci-01-intro/img/01.png)

![img](https://github.com/valery-dubinin/mnt-homeworks/blob/MNT-video/09-ci-01-intro/img/02.png)

![img](https://github.com/valery-dubinin/mnt-homeworks/blob/MNT-video/09-ci-01-intro/img/03.png)

![img](https://github.com/valery-dubinin/mnt-homeworks/blob/MNT-video/09-ci-01-intro/img/04.png)

![img](https://github.com/valery-dubinin/mnt-homeworks/blob/MNT-video/09-ci-01-intro/img/05.png)

![img](https://github.com/valery-dubinin/mnt-homeworks/blob/MNT-video/09-ci-01-intro/img/06.png)

![img](https://github.com/valery-dubinin/mnt-homeworks/blob/MNT-video/09-ci-01-intro/img/07.png)

2. Создайте задачу с типом epic, к ней привяжите несколько задач с типом task, проведите их по всему workflow до Done.

![img](https://github.com/valery-dubinin/mnt-homeworks/blob/MNT-video/09-ci-01-intro/img/08.png)

![img](https://github.com/valery-dubinin/mnt-homeworks/blob/MNT-video/09-ci-01-intro/img/09.png)

![img](https://github.com/valery-dubinin/mnt-homeworks/blob/MNT-video/09-ci-01-intro/img/10.png)

![img](https://github.com/valery-dubinin/mnt-homeworks/blob/MNT-video/09-ci-01-intro/img/11.png)

![img](https://github.com/valery-dubinin/mnt-homeworks/blob/MNT-video/09-ci-01-intro/img/12.png)

![img](https://github.com/valery-dubinin/mnt-homeworks/blob/MNT-video/09-ci-01-intro/img/13.png)

3. При проведении обеих задач по статусам используйте kanban.

![img](https://github.com/valery-dubinin/mnt-homeworks/blob/MNT-video/09-ci-01-intro/img/14.png)

4. Верните задачи в статус Open.

5. Перейдите в Scrum, запланируйте новый спринт, состоящий из задач эпика и одного бага, стартуйте спринт, проведите задачи до состояния Closed. Закройте спринт.

![img](https://github.com/valery-dubinin/mnt-homeworks/blob/MNT-video/09-ci-01-intro/img/15.png)

![img](https://github.com/valery-dubinin/mnt-homeworks/blob/MNT-video/09-ci-01-intro/img/16.png)

![img](https://github.com/valery-dubinin/mnt-homeworks/blob/MNT-video/09-ci-01-intro/img/17.png)

![img](https://github.com/valery-dubinin/mnt-homeworks/blob/MNT-video/09-ci-01-intro/img/18.png)

![img](https://github.com/valery-dubinin/mnt-homeworks/blob/MNT-video/09-ci-01-intro/img/19.png)

![img](https://github.com/valery-dubinin/mnt-homeworks/blob/MNT-video/09-ci-01-intro/img/20.png)

![img](https://github.com/valery-dubinin/mnt-homeworks/blob/MNT-video/09-ci-01-intro/img/22.png)

![img](https://github.com/valery-dubinin/mnt-homeworks/blob/MNT-video/09-ci-01-intro/img/23.png)

6. Если всё отработалось в рамках ожидания — выгрузите схемы workflow для импорта в XML. Файлы с workflow и скриншоты workflow приложите к решению задания.

![img](https://github.com/valery-dubinin/mnt-homeworks/blob/MNT-video/09-ci-01-intro/img/24.png)

![img](https://github.com/valery-dubinin/mnt-homeworks/blob/MNT-video/09-ci-01-intro/img/25.png)

### Как оформить решение задания

Выполненное домашнее задание пришлите в виде ссылки на .md-файл в вашем репозитории.

---
