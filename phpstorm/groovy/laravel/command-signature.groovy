String path = _editor.getVirtualFile()
    .getParent()
    .getName()
    .toLowerCase();

String filename = _editor.getVirtualFile()
    .getNameWithoutExtension()
    .replaceAll(/([A-Z])/, /-$1/)
    .toLowerCase()
    .replaceAll(/^-/, "");

return path + ":" + filename;