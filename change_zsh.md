## How to change zsh and install oh-my-zsh in Amazon AMI Linux

1. sudo yum install zsh
2. Exit and make sure you can login with the PME file still.
3. chsh -l to make sure zsh is in the list.
4. chsh -s /bin/zsh ec2-user
5. Install oh-my-zsh: sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" [1]
6. Change the theme. [2]
7. For some Themes, you need Powerline fonts: [3][4].
8. Follow [5] to change the time zone: [5]
   
   sudo vim /etc/sysconfig/clock
   sudo ln -sf /usr/share/zoneinfo/Europe/Dublin /etc/localtime
   sudo shutdown -r now
9. Change Putty Connection Data Terminal Details as linux. [6]

<hr>


Reference:


[1]. https://github.com/robbyrussell/oh-my-zsh

[2]. https://github.com/robbyrussell/oh-my-zsh/wiki/Themes#agnoster

[3]. https://github.com/powerline/fonts

[4]. https://powerline.readthedocs.io/en/latest/installation/linux.html

[5]. http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/set-time.html#change_time_zone

[6]. https://superuser.com/questions/94436/how-to-configure-putty-so-that-home-end-pgup-pgdn-work-properly-in-bash/104001#104001
 
