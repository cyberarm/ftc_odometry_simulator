module OdometrySimulator
  class States
    class Simulator < CyberarmEngine::GuiState
      def setup
        window.show_cursor = true

        theme(
          TextBlock: { text_static: true, text_shadow: true, text_shadow_color: 0x88_000000 },
          Button: { text_shadow: false },
          ListBox: { text_align: :left },
          MenuItem: { text_align: :left }
        )

        flow(width: 1.0, height: 1.0, padding: 8, background: 0xff_252525) do
          stack(width: 0.33, max_width: 256, height: 1.0, margin: 32) do
              title "<b>ROBOT</b>", width: 1.0, text_align: :center
              flow(width: 1.0) do
                list_box items: ["Prototype", "Red Crab", "Biscuit"].map(&:upcase), fill: true
              end
              caption "<b>- SPECIFICATIONS:</b>", margin_top: 16
              para "    WIDTH: 360.000 mm"
              para "    DEPTH: 360.000 mm"
              para "    HEIGHT: 300.000 mm"
              para "    WEIGHT: 5.443 kg"

              caption "<b>- POSITION:</b>", margin_top: 16
              para "    X: 072.001 mm"
              para "    Y: 072.001 mm"
              para "    Z: ???.??? mm"
              para "    H: 271.012 d"

              caption "<b>- LINEAR VELOCITY:</b>", margin_top: 16
              para "    X: 072.001 mm/s"
              para "    Y: 072.001 mm/s"
              para "    Z: ???.??? mm/s"
              para "    H: 271.012 d/s"

              caption "<b>- ANGULAR VELOCITY:</b>", margin_top: 16
              para "    X: 072.001 mm/s"
              para "    Y: 072.001 mm/s"
              para "    Z: ???.??? mm/s"
              para "    H: 271.012 d/s"

              flow(width: 1.0, height: 2, background: 0xff_ffffff, margin_top: 16, margin_bottom: 16)

              caption "<b>- CONTROL:</b>"
              para "    FORWARD: 045.12% (0.4512)"
              para "    RIGHT: 045.12% (0.4512)"
          end

          stack(fill: true, height: 1.0, background: 0xff_656565) do
            stack(width: 1.0) do
              banner "<b>SIMULATION</b>", width: 1.0, text_align: :center
              flow(width: 1.0) do
                flow(fill: true)
                button("►")
                flow(fill: true)
              end
            end
          end

          stack(width: 0.33, max_width: 256, height: 1.0, margin: 32) do
            title "<b>ODOMETRY</b>", width: 1.0, text_align: :center
            list_box items: ["PROTOTYPE", "Diff + Rot + IMU"].map(&:upcase), width: 1.0
            caption "<b>- POSITION:</b>", margin_top: 16
            para "    X:  72.001 mm"
            para "    Y:  72.001 mm"
            para "    Z: ???.??? mm"
            para "    H: 271.012 d"

            caption "<b>- ERROR:</b>", margin_top: 16
            para "    X: 010.121 mm | 013.451%"
            para "    Y: 010.121 mm | 013.451%"
            para "    Z: ???.??? mm | NaN"
            para "    H: 010.121 d | 013.451%"
          end
        end
      end
    end
  end
end
