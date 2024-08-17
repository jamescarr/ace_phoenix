import ace from 'ace-builds';
import 'ace-builds/src-noconflict/mode-elixir';
import 'ace-builds/src-noconflict/theme-monokai';

export const AceEditorHook = {
  mounted() {
    const mode = this.el.dataset.mode || 'elixir';
    const theme = this.el.dataset.theme || 'monokai';
    const minLines = parseInt(this.el.dataset.minLines) || 10;
    const maxLines = parseInt(this.el.dataset.maxLines) || 30;

    this.editor = ace.edit(this.el, {
      mode: `ace/mode/${mode}`,
      theme: `ace/theme/${theme}`,
      minLines: minLines,
      maxLines: maxLines,
      wrap: true
    });

    this.editor.getSession().on('change', () => {
      this.pushEvent("ace-change", { content: this.editor.getValue() });
    });
  },
  updated() {
    this.editor.setValue(this.el.innerText);
    this.editor.clearSelection();
  }
};
