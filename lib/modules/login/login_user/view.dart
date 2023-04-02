import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class LoginUserPage extends StatelessWidget {
  LoginUserPage({Key? key}) : super(key: key);

  final logic = Get.put<LoginUserLogic>(LoginUserLogic());
  final state = Get.find<LoginUserLogic>().state;

  @override
  Widget build(BuildContext context) {
    return  buildBg();
    // return Scaffold(
    //   body: Form(
    //     // key: _formKey, // 设置globalKey，用于后面获取FormStat
    //     autovalidateMode: AutovalidateMode.onUserInteraction,
    //     child: ListView(
    //       padding: const EdgeInsets.symmetric(horizontal: 20),
    //       children: [
    //         const SizedBox(height: kToolbarHeight), // 距离顶部一个工具栏的高度
    //         buildTitle(), // Login
    //         buildTitleLine(), // Login下面的下划线
    //         const SizedBox(height: 60),
    //         buildEmailTextField(), // 输入邮箱
    //         const SizedBox(height: 30),
    //         buildPasswordTextField(), // 输入密码
    //         buildForgetPasswordText(), // 忘记密码
    //         const SizedBox(height: 60),
    //         buildLoginButton(), // 登录按钮
    //         const SizedBox(height: 40),
    //         buildOtherLoginText(), // 其他账号登录
    //         // buildOtherMethod(), // 其他登录方式
    //         buildRegisterText(), // 注册
    //       ],
    //     ),
    //   ),
    // );
  }
  Widget buildBg(){
    return Scaffold(
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          children: [
            const SizedBox(height: kToolbarHeight), // 距离顶部一个工具栏的高度
            buildTitle(), // Login
            buildTitleLine(), // Login下面的下划线
            const SizedBox(height: 60),
            buildEmailTextField(), // 输入邮箱
            const SizedBox(height: 30),
            buildPasswordTextField(), // 输入密码
            buildForgetPasswordText(), // 忘记密码
            const SizedBox(height: 60),
            buildLoginButton(), // 登录按钮
            const SizedBox(height: 40),
            buildOtherLoginText(), // 其他账号登录
            // buildOtherMethod(), // 其他登录方式
            buildRegisterText(), // 注册
          ],
        )
    );
  }

  Widget buildRegisterText() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('没有账号?'),
            GestureDetector(
              child: const Text('点击注册', style: TextStyle(color: Colors.green)),
              onTap: () {
                print("点击注册");
              },
            )
          ],
        ),
      ),
    );
  }

  // Widget buildOtherMethod() {
  //   return ButtonBar(
  //     alignment: MainAxisAlignment.center,
  //     children: _loginMethod
  //         .map((item) => Builder(builder: (context) {
  //       return IconButton(
  //           icon: Icon(item['icon'],
  //               color: Theme.of(context).iconTheme.color),
  //           onPressed: () {
  //             //TODO: 第三方登录方法
  //             ScaffoldMessenger.of(context).showSnackBar(
  //               SnackBar(
  //                   content: Text('${item['title']}登录'),
  //                   action: SnackBarAction(
  //                     label: '取消',
  //                     onPressed: () {},
  //                   )),
  //             );
  //           });
  //     }))
  //         .toList(),
  //   );

  Widget buildOtherLoginText() {
    return const Center(
      child: Text(
        '其他账号登录',
        style: TextStyle(color: Colors.grey, fontSize: 14),
      ),
    );
  }

  Widget buildLoginButton() {
    return Align(
      child: SizedBox(
        height: 45,
        width: 270,
        child: ElevatedButton(
          style: ButtonStyle(
            // 设置圆角
              shape: MaterialStateProperty.all(const StadiumBorder(
                  side: BorderSide(style: BorderStyle.none)))),
          child: Text('Login', style: TextStyle(fontSize: 30.0)),
          onPressed: ()=>logic.on_login(),
        ),
      ),
    );
  }

  Widget buildForgetPasswordText() {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Align(
        alignment: Alignment.centerRight,
        child: TextButton(
          onPressed: ()=>logic.on_password(),
          child: const Text("忘记密码？",
              style: TextStyle(fontSize: 14, color: Colors.grey)),
        ),
      ),
    );
  }

  Widget buildPasswordTextField() {
    return TextFormField(
        // obscureText: _isObscure, // 是否显示文字
        // onSaved: (v) => _password = v!,
        // validator: (v) {
        //   if (v!.isEmpty) {
        //     return '请输入密码';
        //   }
        // },
        decoration: InputDecoration(
            labelText: "Password",
            suffixIcon: IconButton(
              icon: Icon(
                Icons.remove_red_eye,
                color: Colors.green,
              ),
              onPressed: () {
                // // 修改 state 内部变量, 且需要界面内容更新, 需要使用 setState()
                // setState(() {
                //   _isObscure = !_isObscure;
                //   _eyeColor = (_isObscure
                //       ? Colors.grey
                //       : Theme.of(context).iconTheme.color)!;
                // });
              },
            )));
  }

  Widget buildEmailTextField() {
    return TextFormField(
      decoration: const InputDecoration(labelText: 'Email Address'),
      validator: (v) {
        var emailReg = RegExp(
            r"[\w!#$%&'*+/=?^_`{|}~-]+(?:\.[\w!#$%&'*+/=?^_`{|}~-]+)*@(?:[\w](?:[\w-]*[\w])?\.)+[\w](?:[\w-]*[\w])?");
        if (!emailReg.hasMatch(v!)) {
          return '请输入正确的邮箱地址';
        }
      },
      onSaved: (v) => state.loginEntity.username = v!,
    );
  }

  Widget buildTitleLine() {
    return Padding(
        padding: const EdgeInsets.only(left: 12.0, top: 4.0),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Container(
            color: Colors.black,
            width: 40,
            height: 2,
          ),
        ));
  }

  Widget buildTitle() {
    return const Padding(
        padding: EdgeInsets.all(8),
        child: Text(
          'Login',
          style: TextStyle(fontSize: 42),
        ));
  }
}
