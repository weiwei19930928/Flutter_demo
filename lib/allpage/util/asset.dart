<<<<<<< HEAD
=======
/*
  *
  * 必须初始化（初始化时机可能会不同，看不同点），初始化后都是只读的，不可变

具体看下面例子(声明类型的地方可以与 const 或 final 组合使用)
  * 它们的区别在于，const比final更加严格。final只是要求变量在初始化后值不变，但通过final，
  * 我们无法在编译时（运行之前）知道这个变量的值；
  * 而const所修饰的是编译时常量，我们在编译时就已经知道了它的值，显然，它的值也是不可改变的。
  *
  *     int Func() {
    // 代码
      }

      final int m1 = 60;
      final int m2 = Func(); // 正确 编译时
      const int n1 = 42;
      const int n2 = Func(); // 错误
 */

>>>>>>> dev
const searchList = [
  "ChengDu",
  "ShangHai",
  "BeiJing",
  "TianJing",
  "NanJing",
  "ShenZheng"
];

<<<<<<< HEAD
const recentSuggest = [
  "suggest1",
  "suggest2"
];
=======
const recentSuggest = ["suggest1", "suggest2"];

>>>>>>> dev
