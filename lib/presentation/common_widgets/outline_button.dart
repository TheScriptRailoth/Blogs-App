part of 'common_widgets_import.dart';
class OutlineButton extends StatelessWidget {
  const OutlineButton({
    super.key,
    required this.title,
    required this.onPressed
  });

  final String title;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            minimumSize: Size(MediaQuery.sizeOf(context).width.w, 44.h),
            shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(10.r)
            )
        ),
        child: Text(title,style:TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w700, color: Colors.white),)
    );
  }
}
