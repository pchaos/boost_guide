target("timer")
    set_kind("binary")
    add_files("timer.cpp")

    if is_plat("linux") or is_plat("macosx") then
        add_links("boost_timer")
    end
    
target("progress_timer")
    set_kind("binary")
    add_files("progress_timer.cpp")

target("progress_display")
    set_kind("binary")
    add_files("progress_display.cpp")

target("posix_time")
    set_kind("binary")
    add_files("posix_time.cpp")

target("datetime")
    set_kind("binary")
    add_files("datetime.cpp")
    -- add_links("boost_date_time")
    -- add_required(" ")
    before_run(function (target)
       -- print("copy $(scriptdir)/date_time_zonespec.csv", "$(buildir)/$(plat)/$(arch)/$(mode)/")
       os.cp("$(scriptdir)/date_time_zonespec.csv", "$(buildir)/$(plat)/$(arch)/$(mode)/")
    end)
   -- on_run(function (target)
      -- print("hello xmake!")
    -- end)
   
target("date1")
    set_kind("binary")
    add_files("date1.cpp")

target("date2")
    set_kind("binary")
    add_files("date2.cpp")



