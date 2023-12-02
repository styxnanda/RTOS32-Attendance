import 'package:flutter/material.dart';
import 'package:iot/ui/common/ui_helpers.dart';
import 'package:iot/ui/views/mahasiswa_otp/mahasiswa_otp_view.form.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import 'mahasiswa_otp_viewmodel.dart';

@FormView(fields: [FormTextField(name: 'otp')])
class MahasiswaOtpView extends StackedView<MahasiswaOtpViewModel>
    with $MahasiswaOtpView {
  const MahasiswaOtpView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    MahasiswaOtpViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              "OTP",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            verticalSpaceMedium,
            Text(
              'RFID : ${123}',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15),
            ),
            verticalSpaceMedium,
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Kode OTP',
                border: OutlineInputBorder(),
              ),
            ),
            verticalSpaceMedium,
            ElevatedButton(
              onPressed: () => {},
              child: Text('Verifikasi OTP'),
            ),
            TextButton(
                onPressed: viewModel.goToRegister,
                child: Text("Register Mahasiswa")),
            TextButton(
                onPressed: viewModel.goToDosenLogin,
                child: Text("Login as Dosen")),
            TextButton(onPressed: () {}, child: Text("Listen Websocket")),
          ],
        ),
      ),
    );
  }

  @override
  void onViewModelReady(MahasiswaOtpViewModel viewModel) {
    syncFormWithViewModel(viewModel);
  }

  @override
  MahasiswaOtpViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      MahasiswaOtpViewModel();
}