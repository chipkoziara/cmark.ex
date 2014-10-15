defmodule Stmd.Nif do
  @on_load { :init, 0 }

  def init do
    path = :filename.join(:code.priv_dir(:stmd), 'stmd')
    :ok  = :erlang.load_nif(path, 1)
  end

  def to_html(_) do
    exit(:nif_library_not_loaded)
  end
end
