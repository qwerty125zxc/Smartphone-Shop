Магазин смартфонів

Адмін додає смартфони, консультантів, працівників.
Консультанти відповідають на питання зареєстрованих користувачів та вирішують, чи видаляти коментарі і питання, на які були скарги.
Працівники переглядають замовлення.
Будь-який користувач може: переглядати інформацію про телефони; оформляти замовлення; фільтрувати показ за брендом, ціною від/до.
Зареєстрований користувач може: додавати коментарі та питання, переглядати їх на сторінці профілю; переглядати свої замовлення (у т.ч. й попередні); скаржитися на коментарі й питання.

Зробити (важливість у порядку спадання):
  додати поле статусу для замовлень обох типів
  юзерпарам (щоб не відображалася пошта юзера, плюс там він зберігає свій номер телефону), створення юзерпарам після реєстрації (у контролері індекса перевірка userparam.nil? i order.nil?)
  реалізація кошика: юзер має одне замовлення(кошик) і багато товарів(поля: телефон і к-ть, вказуються при оформленні), для оформлення по натисненні кнопки просто ставиться статус "true", i лише замовлення з таким статусом будуть відображатися у працівників. Щоб не було проблем при створенні замовлення, ставляться значення за замовчуванням, а перегляд замовлення - це edit.
  лише один адмін, і лише адмін може додати нового адміна.
  валідатори
  флеш повідомлення
  робітники і консультанти (належать адміну, тобто треба додати поле в модельку і асоціацію, потім вручну, не через build, прив'язати до адміна)
  скарги на коментарі
  перегляд адміном статистики по роб. і консультантам (скільки замовлень, питань обробили)
  повне відображення інфи про телефони
  фільтр по назві, ціні з кнопкою, що оновлює сторінку
  розподіл роботи по різним працівникам, консультантам
