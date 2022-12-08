using Gtk;

class Application: Gtk.Application {
    protected override void activate() {
        
        // Название задачи
        //  string projact_name = "";


        // Создаем окно
        ApplicationWindow win = new ApplicationWindow(this);
        

        // Задаем название
        win.title = "Time track v1.0.0";

        // Задаем начальный размер
        win.set_default_size(540, 760);

        // Создаем новый box с вертикальным расположением и отступом 2 px между виджетом
        Box box = new Box(Orientation.VERTICAL, 4);

        // Создаем виджет Entry, Label и Button
        Button btn = new Button.with_label("Добавить");
        Label label = new Label("");
        Entry entry = new Entry();


        // Добавляем событие при клике
        btn.clicked.connect( () => {
            label.label =  entry.text;
        });

        // Кнопка закроет окно
        Button btn_close = new Button.with_label("Закрыть");

        btn_close.clicked.connect (() => {
            win.close ();
        });

        // Добавляем виджеты в Box
        box.pack_start(label, true, true, 0);
        box.pack_start(entry, false, false, 0);
        box.pack_start(btn, false, false, 0);
        box.pack_start(btn_close, false, false, 0);


        // Добаить box в окно
        win.add(box);

        // Показываем окно
        win.show_all();
        win.show();
    }
}

int main(string[] args) {
    return new Application().run(args);
}