import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfView extends StatefulWidget {
  const PdfView({Key? key}) : super(key: key);

  @override
  State<PdfView> createState() => _PdfViewState();
}

class _PdfViewState extends State<PdfView> {
  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("CV - PDF format"),
        centerTitle: true,
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10, top: 10, bottom: 10),
            child: ElevatedButton(
                clipBehavior: Clip.none,
                onPressed: () {},
                child: Text("Download")),
          )
        ],
      ),
      body: SfPdfViewer.asset("pdf/resume.pdf"),
    );
  }
}
