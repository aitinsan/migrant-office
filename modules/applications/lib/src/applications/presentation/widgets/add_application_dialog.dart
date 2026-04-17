import 'package:applications/src/applications/presentation/bloc/applications/applications_bloc.dart';
import 'package:applications/src/applications/presentation/bloc/create_application/create_application_bloc.dart';
import 'package:core/core.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class AddApplicationDialog extends StatefulWidget {
  const AddApplicationDialog({super.key, required this.bloc});
  final CreateApplicationBloc bloc;
  @override
  State<AddApplicationDialog> createState() => _AddApplicationDialogState();
}

class _AddApplicationDialogState extends State<AddApplicationDialog> {
  final _firstName = TextEditingController();
  final _lastName = TextEditingController();
  final _pan = TextEditingController();
  final _phone = TextEditingController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      context.read<CreateApplicationBloc>().add(
        const CreateApplicationEvent$Reset(),
      );
    });
  }

  @override
  void dispose() {
    _firstName.dispose();
    _lastName.dispose();
    _pan.dispose();
    _phone.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: widget.bloc,
      child: BlocConsumer<CreateApplicationBloc, CreateApplicationState>(
        listener: (context, state) {
          if (state.isSuccess) {
            context.read<ApplicationsBloc>().add(
              const ApplicationsEvent$LoadInitial(),
            );
            showTopSnack(
              context,
              Snack(SnackSuccessMessage('Application created')),
            );
            context.read<CreateApplicationBloc>().add(
              const CreateApplicationEvent$Reset(),
            );
            Navigator.pop(context);
            return;
          }

          if (state.isFailure) {
            showTopSnack(
              context,
              Snack(SnackAttentionMessage('Failed to create application')),
            );
            context.read<CreateApplicationBloc>().add(
              const CreateApplicationEvent$Reset(),
            );
          }
        },
        builder: (context, state) {
          final isSubmitting = state.isProcessing;
          return Dialog(
            constraints: const BoxConstraints(maxWidth: 422),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            insetPadding: const EdgeInsets.all(24),
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Candidate application',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: const Icon(Icons.close),
                        style: IconButton.styleFrom(
                          minimumSize: Size.zero,
                          padding: EdgeInsets.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Personal data',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                  const SizedBox(height: 12),
                  _buildField(_firstName, 'First name'),
                  const SizedBox(height: 12),
                  _buildField(_lastName, 'Last name'),
                  const SizedBox(height: 12),
                  _buildField(_pan, 'PAN'),
                  const SizedBox(height: 20),
                  const Text(
                    'Contact information',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                  const SizedBox(height: 12),
                  _buildField(
                    _phone,
                    'Phone number',
                    keyboardType: TextInputType.phone,
                  ),
                  const SizedBox(height: 24),
                  SizedBox(
                    child: ElevatedButton(
                      onPressed: isSubmitting ? null : () => _submit(context),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: context.colors.button.primaryDefault,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 10,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        elevation: 0,
                      ),
                      child: isSubmitting
                          ? const SizedBox(
                              height: 18,
                              width: 18,
                              child: CircularProgressIndicator(
                                strokeWidth: 2,
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  Colors.white,
                                ),
                              ),
                            )
                          : const Text('Save and copy link'),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void _submit(BuildContext context) {
    final firstName = _firstName.text.trim();
    final lastName = _lastName.text.trim();
    final pan = _pan.text.trim();
    final phone = _phone.text.trim();

    if (firstName.isEmpty || lastName.isEmpty || pan.isEmpty || phone.isEmpty) {
      showTopSnack(
        context,
        Snack(SnackAttentionMessage('Please fill all fields')),
      );
      return;
    }

    final bloc = context.read<CreateApplicationBloc>();
    if (bloc.state.isProcessing) return;

    bloc.add(
      CreateApplicationEvent$Submit(
        firstName: firstName,
        lastName: lastName,
        phone: phone,
        pan: pan,
      ),
    );
  }

  Widget _buildField(
    TextEditingController controller,
    String hint, {
    TextInputType keyboardType = TextInputType.text,
  }) {
    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: hint,
      ).applyDefaults(context.theme.inputDecorationTheme),
    );
  }
}
