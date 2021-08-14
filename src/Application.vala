public class MyApp : Gtk.Application {
    public MyApp () {
        Object (
            application_id: "com.louis993546.gtk-hello",
            flags: ApplicationFlags.FLAGS_NONE
        );
    }

    protected override void activate () {
        var main_window = new Gtk.ApplicationWindow (this) {
            default_width = 300,
            default_height = 300,
            title = "Hello World"
        };

        var label = new Gtk.Label (_("Hello Again World!"));

        main_window.add (label);
        main_window.show_all ();
    }

    public static int main (string[] args) {
        return new MyApp ().run (args);
    }
}
