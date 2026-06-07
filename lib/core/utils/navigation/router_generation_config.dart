
import 'package:go_router/go_router.dart';
import 'package:payment_app/core/utils/navigation/approutes.dart';
import 'package:payment_app/features/checkout_payment/presentation/views/mycartview.dart';
import 'package:payment_app/features/paymentconfirmation/presentation/views/paymentconfirmationview.dart';
import 'package:payment_app/features/paymentdetails/presentation/views/paymentdetailsview.dart';





class RouterGenerationConfig {
  static GoRouter router = GoRouter(
    initialLocation: Approutes.paymentdetails,
    routes: [
       GoRoute(path: Approutes.cartscreen, 
      name: Approutes.cartscreen,
      builder: (context, state) => const CartScreen()),
    
      GoRoute(path: Approutes.paymentdetails, 
      name: Approutes.paymentdetails,
      builder: (context, state) => const PaymentDetailsScreen()),
      GoRoute(path: Approutes.paymentconfirmationview,
      name: Approutes.paymentconfirmationview,
      builder: (context, state) => const Paymentconfirmationview()),
    
   
    
    
  ],


    
   
      );
}