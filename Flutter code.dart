import 'package:flutter/material.dart';
void main() => runApp(const My());
class My extends StatelessWidget {
  const My({Key? key}) : super(key: key);
  static const String _title = 'Login';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,

      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatefulWidget(),
      ),
    );
  }
}
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);
  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Jeevansathi Matrimony App',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Sign in',
                  style: TextStyle(fontSize: 20),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),

                  labelText: 'Email id/Phone number',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            TextButton(
              onPressed: () {
//forgot password screen
              },
              child: const Text('Forgot Password',),
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Login'),
                  onPressed: () {
                    print(nameController.text);
                    print(passwordController.text);
                  },
                )
            ),
            Row(
              children: <Widget>[
                const Text('New to Jeevansathi?'),
                TextButton(
                  child: const Text(
                    'Register Now!',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyApp()),

                    );//signup screen
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ));
  }
}
class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Personal Details';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: MyCustomForm(),
      ),
    );
  }
}
// Create a Form widget.
class Custom extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}
// Create a corresponding State class, which holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
// Create a global key that uniquely identifies the Form widget
// and allows validation of the form.
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
// Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
      TextFormField(
      decoration: const InputDecoration(
        hintText: 'Enter your height',
        labelText: 'Height*',
      ),
      validator: (value) {
        if (value==null || value.isEmpty) {
          return 'Please enter some text';
        }
        return null;
      },
    ),
    TextFormField(
    decoration: const InputDecoration(
    hintText: 'Enter a country name',
    labelText: 'Country',
    ),
    validator: (value) {
    if (value==null || value.isEmpty) {
    return 'Please enter valid country name';
    }
    return null;
    },
    ),
    TextFormField(
    decoration: const InputDecoration(
    hintText: 'Enter a state name',
    labelText: 'State*',
    ),
    validator: (value) {
    if (value==null || value.isEmpty) {
    return 'Please enter valid state name';
    }
    return null;
    },
    ),
    TextFormField(
    decoration: const InputDecoration(
    hintText: 'Enter a city name',
    labelText: 'City*',
    ),

    validator: (value) {
    if (value==null || value.isEmpty) {
    return 'Please enter valid city name';
    }
    return null;
    },
    ),
    TextFormField(
    decoration: const InputDecoration(
    hintText: 'Enter your date of birth',
    labelText: 'Date of birth*',
    ),
    validator: (value) {
    if (value == null || value.isEmpty ) {
    return 'Please enter valid date';
    }
    return null;
    },
    ),
    new Container(
    padding: const EdgeInsets.only(left: 150.0, top: 40.0),
    child: new RaisedButton(
      child: const Text('Next'),
      onPressed: () {
        Navigator.pop(context);// It returns true if the form is valid, otherwise returns
        if (_formKey.currentState!.validate()) {
// If the form is valid, display a Snackbar.
          Scaffold.of(context)
              .showSnackBar(SnackBar(content: Text('Data is in processing.')));
        }
      },
    )),
        ],
      ),
    );
  }
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Family Details';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: MyCustomForm(),
      ),
    );
  }
}
// Create a Form widget.
class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}
// Create a corresponding State class, which holds data related to the form.
class MyCustomF extends State<MyCustomForm> {
// Create a global key that uniquely identifies the Form widget
// and allows validation of the form.
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
// Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Family Status',
            ),
            validator: (value) {
              if (value==null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Work experience',
              labelText: 'Employed in',
            ),
            validator: (value) {
              if (value==null || value.isEmpty) {
                return 'Please enter valid text';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Occupation',
              labelText: 'Occupation*',
            ),
            validator: (value) {
              if (value==null || value.isEmpty) {
                return 'Please enter valid state name';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Enter Income',
              labelText: 'Income*',
            ),

            validator: (value) {
              if (value==null || value.isEmpty) {
                return 'Please Income';
              }
              return null;
            },
          ),
          new Container(
              padding: const EdgeInsets.only(left: 150.0, top: 40.0),
              child: new RaisedButton(
                child: const Text('Next'),
                onPressed: () {
                  Navigator.pop(context);// It returns true if the form is valid, otherwise returns
                  if (_formKey.currentState!.validate()) {
// If the form is valid, display a Snackbar.
                    Scaffold.of(context)
                        .showSnackBar(SnackBar(content: Text('Data is in processing.')));
                  }
                },
              )),
        ],
      ),
    );
  }
}

class MyApps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Family Details';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: MyCustomForm(),
      ),
    );
  }
}
// Create a Form widget.
class MyCustomForms extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}
// Create a corresponding State class, which holds data related to the form.
class MyCustomFormStates extends State<MyCustomForm> {
// Create a global key that uniquely identifies the Form widget
// and allows validation of the form.
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
// Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Family Status',
            ),
            validator: (value) {
              if (value==null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Family Values',
            ),
            validator: (value) {
              if (value==null || value.isEmpty) {
                return 'Please enter valid text';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Family Type',
            ),
            validator: (value) {
              if (value==null || value.isEmpty) {
                return 'Please enter valid text';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Family Income',
            ),

            validator: (value) {
              if (value==null || value.isEmpty) {
                return 'Please enter valid text';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Fathers Occupation',
            ),
            validator: (value) {
              if (value == null || value.isEmpty ) {
                return 'Please enter valid text';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Mothers Occupation',
            ),
            validator: (value) {
              if (value == null || value.isEmpty ) {
                return 'Please enter valid text';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Brothers',
            ),
            validator: (value) {
              if (value == null || value.isEmpty ) {
                return 'Please enter valid text';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Sisters',
            ),
            validator: (value) {
              if (value == null || value.isEmpty ) {
                return 'Please enter valid text';
              }
              return null;
            },
          ),
          new Container(
              padding: const EdgeInsets.only(left: 150.0, top: 40.0),
              child: new RaisedButton(
                child: const Text('Next'),
                onPressed: () {
                  Navigator.pop(context);// It returns true if the form is valid, otherwise returns
                  if (_formKey.currentState!.validate()) {
// If the form is valid, display a Snackbar.
                    Scaffold.of(context)
                        .showSnackBar(SnackBar(content: Text('Data is in processing.')));
                  }
                },
              )),
        ],
      ),
    );
  }
}

class Myapps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Login Details';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: MyCustomForm(),
      ),
    );
  }
}
// Create a Form widget.
class MyCustomform extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}
// Create a corresponding State class, which holds data related to the form.
class MyCustomFormstate extends State<MyCustomForm> {
// Create a global key that uniquely identifies the Form widget
// and allows validation of the form.
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
// Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Full Name',
            ),
            validator: (value) {
              if (value==null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Email ID',
            ),
            validator: (value) {
              if (value==null || value.isEmpty) {
                return 'Please enter valid text';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Password',
            ),
            validator: (value) {
              if (value==null || value.isEmpty) {
                return 'Please enter valid password';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Phone no.',
            ),

            validator: (value) {
              if (value==null || value.isEmpty) {
                return 'Please enter valid number';
              }
              return null;
            },
          ),
          new Container(
              padding: const EdgeInsets.only(left: 150.0, top: 40.0),
              child: new RaisedButton(
                child: const Text('Next'),
                onPressed: () {
                  Navigator.pop(context);// It returns true if the form is valid, otherwise returns
                  if (_formKey.currentState!.validate()) {
// If the form is valid, display a Snackbar.
                    Scaffold.of(context)
                        .showSnackBar(SnackBar(content: Text('Data is in processing.')));
                  }
                },
              )),
        ],
      ),
    );
  }
}

class Myapplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Family Details';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: MyCustomForm(),
      ),
    );
  }
}
// Create a Form widget.
class MyCustomforms extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}
// Create a corresponding State class, which holds data related to the form.
class MyCustomformsState extends State<MyCustomForm> {
// Create a global key that uniquely identifies the Form widget
// and allows validation of the form.
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
// Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Family Status',
            ),
            validator: (value) {
              if (value==null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Family Values',
            ),
            validator: (value) {
              if (value==null || value.isEmpty) {
                return 'Please enter valid text';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Family Type',
            ),
            validator: (value) {
              if (value==null || value.isEmpty) {
                return 'Please enter valid text';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Family Income',
            ),

            validator: (value) {
              if (value==null || value.isEmpty) {
                return 'Please enter valid text';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Fathers Occupation',
            ),
            validator: (value) {
              if (value == null || value.isEmpty ) {
                return 'Please enter valid text';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Mothers Occupation',
            ),
            validator: (value) {
              if (value == null || value.isEmpty ) {
                return 'Please enter valid text';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Brothers',
            ),
            validator: (value) {
              if (value == null || value.isEmpty ) {
                return 'Please enter valid text';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Sisters',
            ),
            validator: (value) {
              if (value == null || value.isEmpty ) {
                return 'Please enter valid text';
              }
              return null;
            },
          ),
          new Container(
              padding: const EdgeInsets.only(left: 150.0, top: 40.0),
              child: new RaisedButton(
                child: const Text('Next'),
                onPressed: () {
                  Navigator.pop(context);// It returns true if the form is valid, otherwise returns
                  if (_formKey.currentState!.validate()) {
// If the form is valid, display a Snackbar.
                    Scaffold.of(context)
                        .showSnackBar(SnackBar(content: Text('Data is in processing.')));
                  }
                },
              )),
        ],
      ),
    );
  }
}

class MyApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Partner Preference';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: MyCustomForm(),
      ),
    );
  }
}
// Create a Form widget.
class MyCustomFoorms extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}
// Create a corresponding State class, which holds data related to the form.
class MyCustomFoorm extends State<MyCustomForm> {
// Create a global key that uniquely identifies the Form widget
// and allows validation of the form.
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
// Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Min Age',
            ),
            validator: (value) {
              if (value==null || value.isEmpty) {
                return 'Please enter some age';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Min Age',
            ),
            validator: (value) {
              if (value==null || value.isEmpty) {
                return 'Please enter valid min age';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Min Height',
            ),
            validator: (value) {
              if (value==null || value.isEmpty) {
                return 'Please enter valid height';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Max Height',
            ),

            validator: (value) {
              if (value==null || value.isEmpty) {
                return 'Please enter valid Height';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Country',
            ),

            validator: (value) {
              if (value==null || value.isEmpty) {
                return 'Please enter valid Country name';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Maritial status',
            ),

            validator: (value) {
              if (value==null || value.isEmpty) {
                return 'Please enter valid text';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Religion',
            ),

            validator: (value) {
              if (value==null || value.isEmpty) {
                return 'Please enter valid Religion';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Caste',
            ),

            validator: (value) {
              if (value==null || value.isEmpty) {
                return 'Please enter valid Caste';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Mother Tongue',
            ),

            validator: (value) {
              if (value==null || value.isEmpty) {
                return 'Please enter valid text';
              }
              return null;
            },
          ),
          new Container(
              padding: const EdgeInsets.only(left: 150.0, top: 40.0),
              child: new RaisedButton(
                child: const Text('Next'),
                onPressed: () {
                  Navigator.pop(context);// It returns true if the form is valid, otherwise returns
                  if (_formKey.currentState!.validate()) {
// If the form is valid, display a Snackbar.
                    Scaffold.of(context)
                        .showSnackBar(SnackBar(content: Text('Data is in processing.')));
                  }
                },
              )),
        ],
      ),
    );
  }

