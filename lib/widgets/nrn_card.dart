import 'package:flutter/material.dart';
import 'package:nrn_esewa_ui_clone/utils/colors.dart';

class NrnCard extends StatelessWidget {
  final Widget child;
  final Function? onTap;
  final Function? onViewMoreTap;
  final String? title;
  final String buttonText;
  const NrnCard(
      {Key? key,
      required this.child,
      this.onTap,
      this.onViewMoreTap,
      this.title,
      this.buttonText = "View More"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
        border: Border.all(
          color: Color.fromARGB(255, 215, 215, 215),
          width: 2,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          if (title != null)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
              child: Text(
                title!,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: child,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: _ViewMoreButton(
                  onViewMoreTap: onViewMoreTap, buttonText: buttonText),
            ),
          )
        ],
      ),
    );
  }
}

class _ViewMoreButton extends StatelessWidget {
  const _ViewMoreButton({
    Key? key,
    this.onViewMoreTap,
    required this.buttonText,
  }) : super(key: key);

  final Function? onViewMoreTap;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
          ),
          padding: EdgeInsets.all(20),
          backgroundColor: AppColor.primary.withOpacity(0.2),
        ),
        onPressed: () => onViewMoreTap,
        child: Wrap(
          alignment: WrapAlignment.center,
          children: [
            Text(
              buttonText,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w300,
                color: AppColor.primary,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            const Icon(
              Icons.arrow_forward_ios,
              size: 18,
              color: AppColor.primary,
            ),
          ],
        ));
  }
}
