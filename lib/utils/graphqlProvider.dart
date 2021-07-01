import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class GraphQlObject  {
  static HttpLink httpLink = HttpLink(
     'http://vendr-publi-1421bf6xmfwpc-1005575975.us-east-1.elb.amazonaws.com/graphql'
  );

  // final AuthLink authLink = AuthLink(
  //   getToken: () async => 'delivergenie2019test',
  // );
  static Link link = httpLink as Link;
  

  ValueNotifier<GraphQLClient> client = ValueNotifier(
    GraphQLClient(
      cache: GraphQLCache(),
      link: link,
    ),
  );

  GraphQLClient clientToQuery() {
    return GraphQLClient(
      cache: GraphQLCache(),
      link: httpLink,
    );
  }
 
}


GraphQlObject graphQlObject = new GraphQlObject();
