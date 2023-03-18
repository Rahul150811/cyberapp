import 'package:flutter/material.dart';

import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_signaturepad/signaturepad.dart';
import 'package:intl/intl.dart';
import 'package:get/get.dart';

import '../../../model/utils/dimensions.dart';
import '../../../model/utils/app_texts.dart';
import '../../../model/validations/app_validations.dart';
import '../../controller/controllers.dart';
import 'components/components.dart';

class FormsView extends GetView<FormsController> {
  FormsView({super.key, required this.index});
  final int index;

  final GlobalKey<SfSignaturePadState> _signaturePadKey = GlobalKey();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    controller.checkStatusOfKeyboard(context);
    return WillPopScope(
      onWillPop: () async {
        controller.onCustomDispose();
        return true;
      },
      child: SafeArea(
        child: Scaffold(
          appBar: FormAppBar(index: index),
          body: GestureDetector(
            onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
            child: SizedBox(
              width: Get.width,
              height: Get.height,
              child: Column(
                children: [
                  /// Top Banner and current category Descriptions
                  Obx(() => controller.isKeyboardOpen.value
                      ? Container()
                      : ExpandAbleHeader(index: index)),

                  /// Main Body
                  Expanded(
                    flex: 7,
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: AppDimensions.medium,
                        left: AppDimensions.small,
                        right: AppDimensions.small,
                      ),
                      child: SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        child: Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              const RepeatedTitle(
                                  title: "Damage Equipment Form"),
                              const Divider(),

                              /// Date Form
                              RepeatedFormWidget(
                                isForDateFunction: () {
                                  DatePicker.showDatePicker(context,
                                      theme: DatePickerTheme(
                                        backgroundColor:
                                            theme.scaffoldBackgroundColor,
                                        cancelStyle: theme.textTheme.subtitle1!,
                                        itemStyle: theme.textTheme.subtitle1!,
                                      ),
                                      showTitleActions: true,
                                      minTime: DateTime.now(),
                                      maxTime: DateTime(2024, 6, 7),
                                      onChanged: (date) {}, onConfirm: (date) {
                                    DateTime dateTime = date;
                                    String formattedDate =
                                        DateFormat('MM-dd-yyyy')
                                            .format(dateTime);
                                    Get.find<FormsController>()
                                        .dateController
                                        .text = formattedDate;
                                  },
                                      currentTime: DateTime.now(),
                                      locale: LocaleType.en);
                                },
                                isForDate: true,
                                title: "Reported on",
                                hint: "mm-dd-yyyy",
                                icon: Icons.date_range,
                                controller: controller.dateController,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "An empty date is not allowed";
                                  }
                                  return null;
                                },
                              ),
                              const RepeatedTitle(
                                title: "Equipment was assigned to",
                              ),

                              /// Full Name Form
                              RepeatedFormWidget(
                                title: "Full name",
                                hint: "e.g.${DynamicTexts.username}",
                                icon: Icons.person,
                                controller: controller.fullNameController,
                                validator: AppValidators.fullNameValidation,
                              ),
                              SizedBox(
                                height: AppDimensions.large,
                              ),

                              /// Department Form
                              RepeatedFormWidget(
                                title: "Department",
                                hint: "e.g.Finance Department",
                                icon: Icons.corporate_fare,
                                controller: controller.departmentController,
                                validator: AppValidators.repeatedValidation,
                              ),
                              SizedBox(
                                height: AppDimensions.large,
                              ),

                              /// Email Form
                              RepeatedFormWidget(
                                title: "Email",
                                hint: "e.g. example@exmaple.com",
                                icon: Icons.mail,
                                controller: controller.emailController,
                                validator: AppValidators.emailValidation,
                              ),
                              SizedBox(
                                height: AppDimensions.large,
                              ),
                              const RepeatedTitle(
                                title: "Damage equipment information",
                              ),
                              SizedBox(
                                height: AppDimensions.large,
                              ),
                              SizedBox(
                                width: Get.width,
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        /// Description Form
                                        SizedBox(
                                          width: Get.width * 0.45,
                                          child: RepeatedFormWidget(
                                            title: "Description",
                                            hint: "e.g. happen on...",
                                            icon: Icons.description,
                                            controller: controller
                                                .descriptionController,
                                            validator: AppValidators
                                                .repeatedValidation,
                                          ),
                                        ),

                                        /// Damage Location Form
                                        SizedBox(
                                          width: Get.width * 0.45,
                                          child: RepeatedFormWidget(
                                            title: "Damage Location",
                                            hint: "e.g. Mora street ",
                                            icon: Icons.location_city_outlined,
                                            controller:
                                                controller.locationController,
                                            validator:
                                                AppValidators.validateLocation,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: AppDimensions.large),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        /// Date Form
                                        SizedBox(
                                          width: Get.width * 0.45,
                                          child: RepeatedFormWidget(
                                            isForDateFunction: () {
                                              DatePicker.showDatePicker(context,
                                                  showTitleActions: true,
                                                  minTime: DateTime.now(),
                                                  maxTime: DateTime(2024, 6, 7),
                                                  onChanged: (date) {},
                                                  onConfirm: (date) {
                                                DateTime dateTime = date;
                                                String formattedDate =
                                                    DateFormat('MM-dd-yyyy')
                                                        .format(dateTime);
                                                Get.find<FormsController>()
                                                    .incidentDateController
                                                    .text = formattedDate;
                                              },
                                                  currentTime: DateTime.now(),
                                                  locale: LocaleType.en);
                                            },
                                            isForDate: true,
                                            title: "Date of incident",
                                            hint: "e.g. 05-05-01",
                                            icon: Icons.date_range_outlined,
                                            controller: controller
                                                .incidentDateController,
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return "An empty date is not allowed";
                                              }
                                              return null;
                                            },
                                          ),
                                        ),

                                        /// Serial Number Form
                                        SizedBox(
                                          width: Get.width * 0.45,
                                          child: RepeatedFormWidget(
                                            title: "Serial Number",
                                            hint: "e.g. 34-56453-327462",
                                            icon: Icons.numbers_sharp,
                                            controller:
                                                controller.serialNumController,
                                            validator: AppValidators
                                                .validateSerialNumber,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: AppDimensions.large,
                              ),

                              /// Details of the damage Form
                              RepeatedFormWidget(
                                hasLongText: true,
                                title: "Details of the damage",
                                hint:
                                    "Explain what happened to the each equipment in details.",
                                icon: Icons.details,
                                controller: controller.detailsController,
                                validator: AppValidators.repeatedValidation,
                              ),
                              SizedBox(
                                height: AppDimensions.large,
                              ),
                              const RepeatedTitle(
                                title: "Attach the photos of damaged equipment",
                              ),

                              /// Attach File/pictures section
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: Get.width * 0.3,
                                          height: Get.height * 0.05,
                                          child: MaterialButton(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15.r),
                                            ),
                                            color: theme.primaryColor,
                                            onPressed: () async {
                                              final file =
                                                  await controller.pickImage();
                                              if (file != null) {
                                                controller.addToFiles(file);
                                              }
                                            },
                                            child: const Text(
                                              "Browse Files",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: AppDimensions.large,
                                        ),
                                        SizedBox(
                                          width: Get.width * 0.3,
                                          height: Get.height * 0.05,
                                          child: MaterialButton(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15.r),
                                            ),
                                            color: theme.primaryColor,
                                            onPressed: () async {
                                              final file = await controller
                                                  .takePicture();
                                              if (file != null) {
                                                controller.addToFiles(file);
                                              }
                                            },
                                            child: const Text(
                                              "Use Camera",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: AppDimensions.medium,
                                    ),
                                    Obx(
                                      () => controller.filesList.isEmpty
                                          ?

                                          /// if no file select
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                "No File selected",
                                                style:
                                                    theme.textTheme.subtitle2,
                                              ))
                                          :
                                          // if at least one file select
                                          SizedBox(
                                              width: Get.width,
                                              child: Wrap(
                                                crossAxisAlignment:
                                                    WrapCrossAlignment.start,
                                                children: List.generate(
                                                  controller.filesList.length,
                                                  (index) => Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 5.w,
                                                            vertical: 3.h),
                                                    child: Container(
                                                      width: 80.h,
                                                      height: 80.h,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(15.r),
                                                        image: DecorationImage(
                                                          fit: BoxFit.cover,
                                                          image: FileImage(
                                                              controller
                                                                      .filesList[
                                                                  index]),
                                                        ),
                                                      ),
                                                      child: Align(
                                                        alignment:
                                                            Alignment.topRight,
                                                        child: GestureDetector(
                                                          onTap: () {
                                                            controller
                                                                .removeFromFiles(
                                                                    controller
                                                                            .filesList[
                                                                        index]);
                                                          },
                                                          child: CircleAvatar(
                                                            radius: 10.r,
                                                            backgroundColor:
                                                                Colors.red,
                                                            child: Icon(
                                                              Icons.close,
                                                              size: 15.sp,
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: AppDimensions.large,
                              ),
                              const RepeatedTitle(
                                title: "Supervisor Signature",
                              ),
                              Column(
                                children: [
                                  /// Signature Pad
                                  SizedBox(
                                    width: Get.width,
                                    height: Get.height * 0.25,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(15.r),
                                      child: SfSignaturePad(
                                        onDraw: (_, n) {
                                          controller.changeStatusOfSignaturePad(
                                              false);
                                        },
                                        key: _signaturePadKey,
                                        backgroundColor: theme.cardColor,
                                      ),
                                    ),
                                  ),
                                  Align(
                                      alignment: Alignment.bottomRight,
                                      child: InkWell(
                                        onTap: () {
                                          _signaturePadKey.currentState!
                                              .clear();
                                          controller
                                              .changeStatusOfSignaturePad(true);
                                        },
                                        child: Text(
                                          "Clear",
                                          style: theme.textTheme.subtitle2,
                                        ),
                                      ))
                                ],
                              ),
                              SizedBox(
                                height: AppDimensions.large,
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: SizedBox(
                                  width: Get.width * 0.5,
                                  height: Get.height * 0.05,
                                  child: SubmitButton(
                                    onPressed: () {
                                      if (_formKey.currentState!.validate()) {
                                        if (!controller.isPadEmpty.value) {
                                          if (controller.filesList.isNotEmpty) {
                                            FocusManager.instance.primaryFocus
                                                ?.unfocus();
                                            ScaffoldMessenger.of(context)
                                                .hideCurrentSnackBar();
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(constantAppSnackBar(
                                                    context,
                                                    text:
                                                        'Your report has sent successfully!'));
                                          } else {
                                            ScaffoldMessenger.of(context)
                                                .hideCurrentSnackBar();
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(constantAppSnackBar(
                                                    context,
                                                    text:
                                                        'Please attach some pictures!'));
                                          }
                                        } else {
                                          ScaffoldMessenger.of(context)
                                              .hideCurrentSnackBar();
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(constantAppSnackBar(
                                                  context,
                                                  text:
                                                      'Your signature is necessary!!'));
                                        }
                                      }
                                    },
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: AppDimensions.large,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
