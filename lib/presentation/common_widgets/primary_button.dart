part of 'common_widgets_import.dart';
class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.title,
    required this.onPressed,
  });

  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: MyColors.primaryColor,
            minimumSize: Size(MediaQuery.sizeOf(context).width.w, 44.h),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r)
            )
        ),
        child: Text(title,style:TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w700, color: Colors.white),)
    );
  }
}
