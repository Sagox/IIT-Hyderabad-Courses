#include <linux/module.h>
#include <linux/init.h>

MODULE_DESCRIPTION("My kernel module - mykmod");
MODULE_AUTHOR("maruthisi.inukonda [at] gmail.com");
MODULE_LICENSE("GPL");

static int mykmod_init_module(void);
static void mykmod_cleanup_module(void);

module_init(mykmod_init_module);
module_exit(mykmod_cleanup_module);

static int __init mykmod_init_module(void)
{
	printk("mykmod loaded\n");

	printk(KERN_INFO "mykmod initialized at=%p\n", mykmod_init_module);

	return 0;
}

static void mykmod_cleanup_module(void)
{
	printk(KERN_WARNING "mykmod unloaded\n");

	return;
}


