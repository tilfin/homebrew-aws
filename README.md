AWS commands easy to manipulate on terminal
===========================================

## Prepare for homebrew

```
$ brew tap tilfin/aws
```

## ec2ssh

A script to ssh EC2 instances to be selected from the list shown for specified profile

### Install via homebrew

```
$ brew install ec2ssh
```

### How to use

```
$ ec2ssh <aws profile>
```

* If switching profile needs your MFA token, `Enter MFA code> ` is shown.
* SSH user is fixed to _ec2-user_.

### Pre and Post hook

* If your need pre hook, put `~/.ec2ssh-pre` file.
* If your need post hook, put `~/.ec2ssh-post` file.

#### Purposes

* If target EC2 needs the connection via a bastion server, `bastion` in *pre* hook
* If target EC2 needs the routing (via VPN), add a route in *pre* hook and delete the route in *post* hook.

#### Examples

##### .ec2ssh-pre

```
case $profile in
  brand-x)
    bastion=brand-x-bastion
    ;;
  brand-y)
    sudo route add 50.200.200.100 192.168.50.1
    ;;
esac
```

##### .ec2ssh-post

```
case $profile in
  brand-y)
    sudo route del 50.200.200.100
    ;;
esac
```

### Screenshot

![ec2ssh_screenshot](https://cloud.githubusercontent.com/assets/519017/23257373/d62b8df0-fa06-11e6-8832-593b87ee3e46.png)


## swrole

A script to switch an assume role for terminal shell

### Install via homebrew

```
$ brew install swrole
```

### How to use

```
$ swrole [-o] <aws profile>
```

* Enter forked _bash_ that export AWS_XXX environments without `-o` option
* Print AWS_XXX environments with `-o`
* Be careful that session will be expired in a hour.

### Screenshot

![swrole_screenshot](https://cloud.githubusercontent.com/assets/519017/23257376/dc26893a-fa06-11e6-86af-6fa88ce49299.png)
