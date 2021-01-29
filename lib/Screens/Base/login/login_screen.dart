import 'package:feliciastore/Screens/Base/base_screen.dart';
import 'package:feliciastore/helpers/validators.dart';
import 'package:feliciastore/widgets/custom_icon_button.dart';
import 'package:feliciastore/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Form(
          key: formKey,
          child: Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.all(32),
            child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                elevation: 16,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const SizedBox(height: 16,),
                      Container(decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(32),
                      ),
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: TextFormField(
                          decoration: const InputDecoration(hintText: "E-mail", border: InputBorder.none),
                          keyboardType: TextInputType.emailAddress,
                          autocorrect: false,
                          validator: (email){
                        if(!emailValid(email))
                          return "E-mail Inválido";
                        return null;
                          }

                        ),
                      ),
                      Container(decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(32),
                      ),
                        margin: EdgeInsets.symmetric(vertical: 16),
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: TextFormField(
                            decoration: const InputDecoration(hintText: "Senha", border: InputBorder.none),
                            keyboardType: TextInputType.emailAddress,
                            autocorrect: false,
                            validator: (pass){
                              if(pass.isEmpty || pass.length < 6 )
                                return "senha inválida";
                            }

                        ),
                      ),

                      const SizedBox(height: 16,),
                      SizedBox(
                        height: 44,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32),
                          ),
                          child: Text('Login'),
                          color: Theme.of(context).primaryColor,
                          disabledColor: Theme.of(context).primaryColor.withAlpha(100),
                          textColor: Colors.white,
                          onPressed: (){
                            formKey.currentState.validate();
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(builder: (context)=>BaseScreen())
                            );
                          },
                        ),
                      )
                    ],
                  ),
                )
            ),
          ),
        ),
      ),
    );
  }
}
