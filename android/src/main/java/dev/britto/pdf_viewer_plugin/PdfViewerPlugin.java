package dev.britto.pdf_viewer_plugin;

import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.BinaryMessenger;

public class PdfViewerPlugin implements FlutterPlugin {

  public PdfViewerPlugin() {
  }

  @SuppressWarnings("deprecation")
  public static void registerWith(io.flutter.plugin.common.PluginRegistry.Registrar registrar) {
    registrar
        .platformViewRegistry()
        .registerViewFactory(
            "pdf_viewer_plugin",
            new PdfViewerFactory(registrar.messenger()));
  }

  @Override
  public void onAttachedToEngine(FlutterPluginBinding binding) {
    BinaryMessenger messenger = binding.getBinaryMessenger();
    binding
        .getPlatformViewRegistry()
        .registerViewFactory(
            "pdf_viewer_plugin", new PdfViewerFactory(messenger));
  }

  @Override
  public void onDetachedFromEngine(FlutterPluginBinding binding) {
  }
}