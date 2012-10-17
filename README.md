Kyle Lacy's Serverfiles
=======================
These are all the files I use on my private server. It has been carefully produced in order to bare the ultimate Linux distro, also known as [Arch-Linux](http://www.archlinux.org/). This repo is heavily based upon my own [dotfiles repo](https://github.com/kylewlacy/dotfiles/), and uses the same technique for the most part.

My Setup
--------
This setup probably isn't portable, so don't install all of it. But if you happen to have [this snazzy beast](http://support.gateway.com/s/Mobile/Gateway/M305CRV/3501715sp58.shtml), then feel free. I happen to think it looks pretty swell sat [atop my cable box](http://d.pr/T3Nz), especially when you throw some more DDR RAM at it. It also works incredibly well as a Minecraft server, and always seems to maintain a cool temperature between 37° and 43℃.

Reinstallation
--------------
While my server has (yet) to crash in order for me to test this, I would recommend just trying the same [reinstallation that I mentioned in my dotfiles](https://github.com/kylewlacy/dotfiles#reinstallation). It should work all the same. Also take a look at the [Pacman script](https://github.com/kylewlacy/serverfiles/blob/master/root/.pacman/man.sh) for package reinstallation.

Hiccups
-------
- Be sure to symlink `/etc/profile` to `/etc/zprofile` or some things won't work as well for ZSH
- When setting up user accounts again, be sure to utter a UNIX prayer of some sort to increase your odds of `/etc/passwd` not breaking everything in some capacity. I reccomned [this mantra](http://www.wrongplanet.net/postt128227.html) if you don't happen to have one. It will probably break anyway.
