PAOSP Pie (16.X) for Harpia
=====================================

Current Status
--------------

Everything is working.

Download
--------

You can grab some links from the [XDA thread](https://na) or just join us at Telegram in the [Prebuilts Delivery Channel](https://t.me/romdelivery) or the [Dev support and off-topic group](https://t.me/somefeak) (previously SomeFeaK group).

Build Instructions
------------------

- Automatic compilation

Download the script

	wget -q https://raw.githubusercontent.com/FacuM/shellscripts/master/android/buildrom/examples/paosp_harpia.sh -O ~/paosp_harpia.sh

Edit the variables at the top to your liking

	vi ~/paosp_harpia.sh   or   nano ~/paosp_harpia.sh

![Variables to edit](https://i.imgur.com/6gqS7sn.png)

Then begin the build, syncing source and just building what you need.

	. ~/paosp_harpia.sh

If you want to remove the old source, you can run it like this.

	. ~/paosp_harpia.sh reset

Or you can just clean the old compilation and build it all again.

	. ~/paosp_harpia.sh clobber

- Manual compilation

Create a build directory

	mkdir -p paosp
	cd paosp

Initialize your local repository using the LOS trees:

	repo init -u https://github.com/pornypie/platform_manifest.git -b teen

Now move your magic wand
	
	wget -O paosp.sh https://github.com/Harpia-development/paosp_harpia/raw/master/paosp.sh
	bash paosp.sh

Do this everytime before every sync for tracking changes.

Then to sync up:

     repo sync  --force-sync --force-broken --current-branch --no-tags --no-clone-bundle --optimized-fetch --prune -j$(nproc --all)

Do this everything after sync for applying patches.	

Now start the build...

	. build/envsetup.sh 
	lunch paosp_harpia-userdebug
	brunch harpia   or   mka otapackage

Please see the [LineageOS WIKI](https://wiki.lineageos.org/) for further information.

Resources
---------

- Understanding bash sourcing: [How to detect if a script is being sourced - Stack Overflow](https://stackoverflow.com/questions/2683279/how-to-detect-if-a-script-is-being-sourced)
