import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Mycustom extends StatelessWidget {
  const Mycustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          pinned: true,
          backgroundColor: Colors.deepPurpleAccent,
          expandedHeight: 250.0,
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: true,
            title: Text("Arpan Padamani",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                )),
            background: Row(
              children: <Widget>[
                Spacer(),
                CircleAvatar(
                    radius: 90.0,
                    backgroundImage: NetworkImage(
                      "https://avatars.githubusercontent.com/u/93420625?v=4",
                    ),
                    backgroundColor: Colors.black),
                Spacer(),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Column(
            children: [
              Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam id rutrum felis. Pellentesque sapien odio, porttitor eu erat eget, facilisis ultricies nisl. Suspendisse sed mattis ligula. Nulla eget volutpat augue. Suspendisse ultricies ex augue, ut mollis leo sagittis cursus. Nulla et quam cursus neque sodales imperdiet ac in erat. Vestibulum tincidunt hendrerit enim et sagittis. Fusce scelerisque tortor ut hendrerit accumsan. Nullam nisl diam, volutpat quis ex eu, tristique consequat erat. Ut ultrices vitae metus eu viverra. Cras fermentum venenatis ornare. In non ex a est ultrices pulvinar quis ultricies odio. Mauris accumsan libero sed mi posuere, quis tincidunt urna finibus. Cras ornare diam neque, vitae facilisis justo convallis ut. Mauris placerat elementum dolor vel vulputate."),
              Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam id rutrum felis. Pellentesque sapien odio, porttitor eu erat eget, facilisis ultricies nisl. Suspendisse sed mattis ligula. Nulla eget volutpat augue. Suspendisse ultricies ex augue, ut mollis leo sagittis cursus. Nulla et quam cursus neque sodales imperdiet ac in erat. Vestibulum tincidunt hendrerit enim et sagittis. Fusce scelerisque tortor ut hendrerit accumsan. Nullam nisl diam, volutpat quis ex eu, tristique consequat erat. Ut ultrices vitae metus eu viverra. Cras fermentum venenatis ornare. In non ex a est ultrices pulvinar quis ultricies odio. Mauris accumsan libero sed mi posuere, quis tincidunt urna finibus. Cras ornare diam neque, vitae facilisis justo convallis ut. Mauris placerat elementum dolor vel vulputate."),
              Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam id rutrum felis. Pellentesque sapien odio, porttitor eu erat eget, facilisis ultricies nisl. Suspendisse sed mattis ligula. Nulla eget volutpat augue. Suspendisse ultricies ex augue, ut mollis leo sagittis cursus. Nulla et quam cursus neque sodales imperdiet ac in erat. Vestibulum tincidunt hendrerit enim et sagittis. Fusce scelerisque tortor ut hendrerit accumsan. Nullam nisl diam, volutpat quis ex eu, tristique consequat erat. Ut ultrices vitae metus eu viverra. Cras fermentum venenatis ornare. In non ex a est ultrices pulvinar quis ultricies odio. Mauris accumsan libero sed mi posuere, quis tincidunt urna finibus. Cras ornare diam neque, vitae facilisis justo convallis ut. Mauris placerat elementum dolor vel vulputate."),
              Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam id rutrum felis. Pellentesque sapien odio, porttitor eu erat eget, facilisis ultricies nisl. Suspendisse sed mattis ligula. Nulla eget volutpat augue. Suspendisse ultricies ex augue, ut mollis leo sagittis cursus. Nulla et quam cursus neque sodales imperdiet ac in erat. Vestibulum tincidunt hendrerit enim et sagittis. Fusce scelerisque tortor ut hendrerit accumsan. Nullam nisl diam, volutpat quis ex eu, tristique consequat erat. Ut ultrices vitae metus eu viverra. Cras fermentum venenatis ornare. In non ex a est ultrices pulvinar quis ultricies odio. Mauris accumsan libero sed mi posuere, quis tincidunt urna finibus. Cras ornare diam neque, vitae facilisis justo convallis ut. Mauris placerat elementum dolor vel vulputate."),
              Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam id rutrum felis. Pellentesque sapien odio, porttitor eu erat eget, facilisis ultricies nisl. Suspendisse sed mattis ligula. Nulla eget volutpat augue. Suspendisse ultricies ex augue, ut mollis leo sagittis cursus. Nulla et quam cursus neque sodales imperdiet ac in erat. Vestibulum tincidunt hendrerit enim et sagittis. Fusce scelerisque tortor ut hendrerit accumsan. Nullam nisl diam, volutpat quis ex eu, tristique consequat erat. Ut ultrices vitae metus eu viverra. Cras fermentum venenatis ornare. In non ex a est ultrices pulvinar quis ultricies odio. Mauris accumsan libero sed mi posuere, quis tincidunt urna finibus. Cras ornare diam neque, vitae facilisis justo convallis ut. Mauris placerat elementum dolor vel vulputate."),
              Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam id rutrum felis. Pellentesque sapien odio, porttitor eu erat eget, facilisis ultricies nisl. Suspendisse sed mattis ligula. Nulla eget volutpat augue. Suspendisse ultricies ex augue, ut mollis leo sagittis cursus. Nulla et quam cursus neque sodales imperdiet ac in erat. Vestibulum tincidunt hendrerit enim et sagittis. Fusce scelerisque tortor ut hendrerit accumsan. Nullam nisl diam, volutpat quis ex eu, tristique consequat erat. Ut ultrices vitae metus eu viverra. Cras fermentum venenatis ornare. In non ex a est ultrices pulvinar quis ultricies odio. Mauris accumsan libero sed mi posuere, quis tincidunt urna finibus. Cras ornare diam neque, vitae facilisis justo convallis ut. Mauris placerat elementum dolor vel vulputate.")
            ],
          ),
        )
      ],
    ));
  }
}
