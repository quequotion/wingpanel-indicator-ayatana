/* indicator3-0.4.vapi generated by vapigen, do not modify. */

[CCode (cprefix = "Indicator", lower_case_cprefix = "indicator_")]
namespace IndicatorAyatana {
	[CCode (cheader_filename = "libindicator/indicator-desktop-shortcuts.h", type_check_function = "INDICATOR_IS_DESKTOP_SHORTCUTS", type_id = "indicator_desktop_shortcuts_get_type ()")]
	public class DesktopShortcuts : GLib.Object {
		[CCode (has_construct_function = false)]
		public DesktopShortcuts (string file, string identity);
		public unowned string get_nicks ();
		public bool nick_exec (string nick);
		public bool nick_exec_with_context (string nick, GLib.AppLaunchContext launch_context);
		public unowned string nick_get_name (string nick);
		public string desktop_file { construct; }
		[NoAccessorMethod]
		public string identity { owned get; construct; }
	}
	[CCode (cheader_filename = "libindicator/indicator-ng.h", type_check_function = "INDICATOR_IS_NG", type_id = "indicator_ng_get_type ()")]
	public class Ng : IndicatorAyatana.Object, GLib.Initable {
		[CCode (has_construct_function = false)]
		public Ng (string service_file) throws GLib.Error;
		[CCode (has_construct_function = false)]
		public Ng.for_profile (string service_file, string profile) throws GLib.Error;
		public unowned string get_profile ();
		public unowned string get_service_file ();
		public string profile { get; construct; }
		public string service_file { get; construct; }
	}
	[CCode (cheader_filename = "libindicator/indicator-object.h", type_check_function = "INDICATOR_IS_OBJECT", type_id = "indicator_object_get_type ()")]
	public class Object : GLib.Object {
		[CCode (has_construct_function = false)]
		protected Object ();
		public bool check_environment (string env);
		[NoWrapper]
		public virtual void entry_activate (IndicatorAyatana.ObjectEntry entry, uint timestamp);
		[NoWrapper]
		public virtual void entry_activate_window (IndicatorAyatana.ObjectEntry entry, uint windowid, uint timestamp);
		[NoWrapper]
		public virtual void entry_being_removed (IndicatorAyatana.ObjectEntry entry);
		[NoWrapper]
		public virtual void entry_close (IndicatorAyatana.ObjectEntry entry, uint timestamp);
		[NoWrapper]
		public virtual void entry_was_added (IndicatorAyatana.ObjectEntry entry);
		[CCode (has_construct_function = false)]
		public Object.from_file (string file);
		[NoWrapper]
		public virtual unowned string get_accessible_desc ();
		public virtual GLib.List<weak IndicatorAyatana.ObjectEntry> get_entries ();
		public unowned string[] get_environment ();
		[NoWrapper]
		public virtual unowned Gtk.Image get_image ();
		[NoWrapper]
		public virtual unowned Gtk.Label get_label ();
		public virtual uint get_location (IndicatorAyatana.ObjectEntry entry);
		[NoWrapper]
		public virtual unowned Gtk.Menu get_menu ();
		[NoWrapper]
		public virtual unowned string get_name_hint ();
		public virtual int get_position ();
		public virtual bool get_show_now (IndicatorAyatana.ObjectEntry entry);
		public void set_environment (string[] env);
		public void set_visible (bool visible);
		[NoAccessorMethod]
		public bool indicator_object_default_visibility { get; set; }
		public virtual signal void accessible_desc_update (IndicatorAyatana.ObjectEntry entry);
		public virtual signal void entry_added (IndicatorAyatana.ObjectEntry entry);
		public virtual signal void entry_moved (IndicatorAyatana.ObjectEntry entry, uint old_pos, uint new_pos);
		public virtual signal void entry_removed (IndicatorAyatana.ObjectEntry entry);
		public virtual signal void entry_scrolled (IndicatorAyatana.ObjectEntry entry, uint delta, IndicatorAyatana.ScrollDirection direction);
		public virtual signal void menu_show (IndicatorAyatana.ObjectEntry entry, uint timestamp);
		public virtual signal void secondary_activate (IndicatorAyatana.ObjectEntry entry, uint timestamp);
		public virtual signal void show_now_changed (IndicatorAyatana.ObjectEntry entry, bool show_now_state);
	}
	[CCode (cheader_filename = "libindicator/indicator-object.h")]
	[Compact]
	public class ObjectEntry {
		public weak string accessible_desc;
		public weak Gtk.Image image;
		public weak Gtk.Label label;
		public weak Gtk.Menu menu;
		public weak string name_hint;
		public weak IndicatorAyatana.Object parent_object;
		public static void activate (IndicatorAyatana.Object io, IndicatorAyatana.ObjectEntry entry, uint timestamp);
		public static void activate_window (IndicatorAyatana.Object io, IndicatorAyatana.ObjectEntry entry, uint windowid, uint timestamp);
		public static void close (IndicatorAyatana.Object io, IndicatorAyatana.ObjectEntry entry, uint timestamp);
		public static bool is_visible (IndicatorAyatana.Object io, IndicatorAyatana.ObjectEntry entry);
	}
	[CCode (cheader_filename = "libindicator/indicator-service.h", type_check_function = "INDICATOR_IS_SERVICE", type_id = "indicator_service_get_type ()")]
	public class Service : GLib.Object {
		[CCode (has_construct_function = false)]
		public Service (string name);
		[CCode (cname = "indicator_service_new_version", has_construct_function = false)]
		public Service.with_version (string name, uint version);
		[NoAccessorMethod]
		public string name { owned get; set; }
		[NoAccessorMethod]
		public uint version { get; set; }
		public virtual signal void shutdown ();
	}
	[CCode (cheader_filename = "libindicator/indicator-service-manager.h", type_check_function = "INDICATOR_IS_SERVICE_MANAGER", type_id = "indicator_service_manager_get_type ()")]
	public class ServiceManager : GLib.Object {
		[CCode (has_construct_function = false)]
		public ServiceManager (string dbus_name);
		public bool connected ();
		public void set_refresh (uint time_in_ms);
		[CCode (cname = "indicator_service_manager_new_version", has_construct_function = false)]
		public ServiceManager.with_version (string dbus_name, uint version);
		[NoAccessorMethod]
		public string name { owned get; set; }
		[NoAccessorMethod]
		public uint version { get; set; }
		public virtual signal void connection_change (bool connected);
	}
	[CCode (cheader_filename = "libindicator/indicator-object.h", cprefix = "INDICATOR_OBJECT_SCROLL_", has_type_id = false)]
	public enum ScrollDirection {
		UP,
		DOWN,
		LEFT,
		RIGHT
	}
	[CCode (cheader_filename = "libindicator/indicator.h", has_target = false)]
	public delegate GLib.Type get_type_t ();
	[CCode (cheader_filename = "libindicator/indicator.h", has_target = false)]
	public delegate unowned string get_version_t ();
	[CCode (cheader_filename = "libindicator/indicator.h")]
	public const string GET_TYPE_S;
	[CCode (cheader_filename = "libindicator/indicator.h")]
	public const string GET_VERSION_S;
	[CCode (cheader_filename = "libindicator/indicator.h")]
	public const int SET_VERSION;
	[CCode (cheader_filename = "libindicator/indicator.h")]
	public const string VERSION;
	[CCode (cheader_filename = "libindicator/indicator.h", cname = "get_version")]
	public static unowned string get_version ();
	[CCode (cheader_filename = "libindicator/indicator-image-helper.h")]
	public static unowned Gtk.Image image_helper (string name);
	[CCode (cheader_filename = "libindicator/indicator-image-helper.h")]
	public static void image_helper_update (Gtk.Image image, string name);
	[CCode (cheader_filename = "libindicator/indicator-image-helper.h")]
	public static void image_helper_update_from_gicon (Gtk.Image image, GLib.Icon icon);
}