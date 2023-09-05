import { useCurrentEditor } from "@tiptap/react";
import React from 'react'


const CSSEditor = () => {
  const { editor } = useCurrentEditor();

  if (!editor) {
    return null
  }

  return (
    <>
      <input
        type='textarea'
        onKeyDown={(e) => { if (e.key === "Enter") {
          editor.chain().focus().selectParentNode().updateAttributes('div', { style: e.target.value }).run();
        }}}
        className={editor.isActive('css-editor') ? 'is-active' : ''}
      />
    </>
  )
}

export default CSSEditor